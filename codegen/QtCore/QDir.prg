%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDir(const QDir & dir)
$internalConstructor=|new1|const QDir &

$prototype=QDir(const QString & path = QString())
$internalConstructor=|new2|const QString &=QString()

$prototype=QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)
$internalConstructor=|new3|const QString &,const QString &,QDir::SortFlags=QDir::SortFlags( QDir::Name OR QDir::IgnoreCase ),QDir::Filters=QDir::AllEntries

/*
[1]QDir(const QDir & dir)
[2]QDir(const QString & path = QString())
[3]QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)
*/

HB_FUNC_STATIC( QDIR_NEW )
{
  if( ISNUMPAR(1) && ISQDIR(1) )
  {
    QDir_new1();
  }
  else if( ISBETWEEN(0,1) && (ISCHAR(1)||ISNIL(1)) )
  {
    QDir_new2();
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISCHAR(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QDir_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=QString absoluteFilePath(const QString & fileName) const
$method=|QString|absoluteFilePath|const QString &

$prototypeV2=QString absolutePath() const

$prototypeV2=QString canonicalPath() const

$prototype=bool cd(const QString & dirName)
$method=|bool|cd|const QString &

$prototypeV2=bool cdUp()

$prototypeV2=uint count() const

$prototypeV2=QString dirName() const

$prototype=QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
$internalMethod=|QFileInfoList|entryInfoList,entryInfoList1|const QStringList &,QDir::Filters=QDir::NoFilter,QDir::SortFlags=QDir::NoSort

$prototype=QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const
$internalMethod=|QFileInfoList|entryInfoList,entryInfoList2|QDir::Filters=QDir::NoFilter,QDir::SortFlags=QDir::NoSort

/*
[1]QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
[2]QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/

HB_FUNC_STATIC( QDIR_ENTRYINFOLIST )
{
  if( ISBETWEEN(1,3) && ISARRAY(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QDir_entryInfoList1();
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QDir_entryInfoList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=entryInfoList

$prototype=QStringList entryList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
$internalMethod=|QStringList|entryList,entryList1|const QStringList &,QDir::Filters=QDir::NoFilter,QDir::SortFlags=QDir::NoSort

$prototype=QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const
$internalMethod=|QStringList|entryList,entryList2|QDir::Filters=QDir::NoFilter,QDir::SortFlags=QDir::NoSort

/*
[1]QStringList entryList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
[2]QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/

HB_FUNC_STATIC( QDIR_ENTRYLIST )
{
  if( ISBETWEEN(1,3) && ISARRAY(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QDir_entryList1();
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QDir_entryList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=entryList

$prototype=bool exists(const QString & name) const
$internalMethod=|bool|exists,exists1|const QString &

$prototype=bool exists() const
$internalMethod=|bool|exists,exists2|

/*
[1]bool exists(const QString & name) const
[2]bool exists() const
*/

HB_FUNC_STATIC( QDIR_EXISTS )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QDir_exists1();
  }
  else if( ISNUMPAR(0) )
  {
    QDir_exists2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=exists

$prototype=QString filePath(const QString & fileName) const
$method=|QString|filePath|const QString &

$prototypeV2=QDir::Filters filter() const

$prototypeV2=bool isAbsolute() const

$prototypeV2=bool isReadable() const

$prototypeV2=bool isRelative() const

$prototypeV2=bool isRoot() const

$prototypeV2=bool makeAbsolute()

$prototype=bool mkdir(const QString & dirName) const
$method=|bool|mkdir|const QString &

$prototype=bool mkpath(const QString & dirPath) const
$method=|bool|mkpath|const QString &

$prototypeV2=QStringList nameFilters() const

$prototypeV2=QString path() const

$prototypeV2=void refresh() const

$prototype=QString relativeFilePath(const QString & fileName) const
$method=|QString|relativeFilePath|const QString &

$prototype=bool remove(const QString & fileName)
$method=|bool|remove|const QString &

$prototype=bool rename(const QString & oldName, const QString & newName)
$method=|bool|rename|const QString &,const QString &

$prototype=bool rmdir(const QString & dirName) const
$method=|bool|rmdir|const QString &

$prototype=bool rmpath(const QString & dirPath) const
$method=|bool|rmpath|const QString &

$prototype=void setFilter(Filters filters)
$method=|void|setFilter|QDir::Filters

$prototype=void setNameFilters(const QStringList & nameFilters)
$method=|void|setNameFilters|const QStringList &

$prototype=void setPath(const QString & path)
$method=|void|setPath|const QString &

$prototype=void setSorting(SortFlags sort)
$method=|void|setSorting|QDir::SortFlags

$prototypeV2=QDir::SortFlags sorting() const

$prototype=static void addSearchPath(const QString & prefix, const QString & path)
$staticMethod=|void|addSearchPath|const QString &,const QString &

$prototype=static QString cleanPath(const QString & path)
$staticMethod=|QString|cleanPath|const QString &

$prototypeV2=static QDir current()

$prototypeV2=static QString currentPath()

$prototypeV2=static QFileInfoList drives()

$prototype=static QString fromNativeSeparators(const QString & pathName)
$staticMethod=|QString|fromNativeSeparators|const QString &

$prototypeV2=static QDir home()

$prototypeV2=static QString homePath()

$prototype=static bool isAbsolutePath(const QString & path)
$staticMethod=|bool|isAbsolutePath|const QString &

$prototype=static bool isRelativePath(const QString & path)
$staticMethod=|bool|isRelativePath|const QString &

$prototype=static bool match(const QString & filter, const QString & fileName)
$internalStaticMethod=|bool|match,match1|const QString &,const QString &

$prototype=static bool match(const QStringList & filters, const QString & fileName)
$internalStaticMethod=|bool|match,match2|const QStringList &,const QString &

/*
[1]bool match(const QString & filter, const QString & fileName)
[2]bool match(const QStringList & filters, const QString & fileName)
*/

HB_FUNC_STATIC( QDIR_MATCH )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QDir_match1();
  }
  else if( ISNUMPAR(2) && ISARRAY(1) && ISCHAR(2) )
  {
    QDir_match2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=match

$prototypeV2=static QDir root()

$prototypeV2=static QString rootPath()

$prototype=static QStringList searchPaths(const QString & prefix)
$staticMethod=|QStringList|searchPaths|const QString &

$prototypeV2=static QChar separator()

$prototype=static bool setCurrent(const QString & path)
$staticMethod=|bool|setCurrent|const QString &

$prototype=static void setSearchPaths(const QString & prefix, const QStringList & searchPaths)
$staticMethod=|void|setSearchPaths|const QString &,const QStringList &

$prototypeV2=static QDir temp()

$prototypeV2=static QString tempPath()

$prototype=static QString toNativeSeparators(const QString & pathName)
$staticMethod=|QString|toNativeSeparators|const QString &

$extraMethods

#pragma ENDDUMP
