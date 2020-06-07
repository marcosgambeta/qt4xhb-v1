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

#include <QtCore/QDir>
#include <QtCore/QDateTime>

$prototype=QFileInfo()
$internalConstructor=|new1|

$prototype=QFileInfo(const QString & file)
$internalConstructor=|new2|const QString &

$prototype=QFileInfo(const QFile & file)
$internalConstructor=|new3|const QFile &

$prototype=QFileInfo(const QDir & dir, const QString & file)
$internalConstructor=|new4|const QDir &,const QString &

$prototype=QFileInfo(const QFileInfo & fileinfo)
$internalConstructor=|new5|const QFileInfo &

/*
[1]QFileInfo()
[2]QFileInfo(const QString & file)
[3]QFileInfo(const QFile & file)
[4]QFileInfo(const QDir & dir, const QString & file)
[5]QFileInfo(const QFileInfo & fileinfo)
*/

HB_FUNC_STATIC( QFILEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFileInfo_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFileInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQFILE(1) )
  {
    QFileInfo_new3();
  }
  else if( ISNUMPAR(2) && ISQDIR(1) && ISCHAR(2) )
  {
    QFileInfo_new4();
  }
  else if( ISNUMPAR(1) && ISQFILEINFO(1) )
  {
    QFileInfo_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=QDir absoluteDir() const
$method=|QDir|absoluteDir|

$prototypeV2=QString absoluteFilePath() const

$prototypeV2=QString absolutePath() const

$prototypeV2=QString baseName() const

$prototypeV2=QString bundleName() const

$prototypeV2=bool caching() const

$prototypeV2=QString canonicalFilePath() const

$prototypeV2=QString canonicalPath() const

$prototypeV2=QString completeBaseName() const

$prototypeV2=QString completeSuffix() const

$prototype=QDateTime created() const
$method=|QDateTime|created|

$prototype=QDir dir() const
$method=|QDir|dir|

$prototypeV2=bool exists() const

$prototypeV2=QString fileName() const

$prototypeV2=QString filePath() const

$prototypeV2=QString group() const

$prototype=uint groupId() const
$method=|uint|groupId|

$prototypeV2=bool isAbsolute() const

$prototypeV2=bool isBundle() const

$prototypeV2=bool isDir() const

$prototypeV2=bool isExecutable() const

$prototypeV2=bool isFile() const

$prototypeV2=bool isHidden() const

$prototypeV2=bool isReadable() const

$prototypeV2=bool isRelative() const

$prototypeV2=bool isRoot() const

$prototypeV2=bool isSymLink() const

$prototypeV2=bool isWritable() const

$prototype=QDateTime lastModified() const
$method=|QDateTime|lastModified|

$prototype=QDateTime lastRead() const
$method=|QDateTime|lastRead|

$prototypeV2=bool makeAbsolute()

$prototypeV2=QString owner() const

$prototype=uint ownerId() const
$method=|uint|ownerId|

$prototypeV2=QString path() const

$prototype=bool permission(QFile::Permissions permissions) const
$method=|bool|permission|QFile::Permissions

$prototype=QFile::Permissions permissions() const
$method=|QFile::Permissions|permissions|

$prototype=void refresh()
$method=|void|refresh|

$prototype=void setCaching(bool enable)
$method=|void|setCaching|bool

$prototype=void setFile(const QString & file)
$internalMethod=|void|setFile,setFile1|const QString &

$prototype=void setFile(const QFile & file)
$internalMethod=|void|setFile,setFile2|const QFile &

$prototype=void setFile(const QDir & dir, const QString & file)
$internalMethod=|void|setFile,setFile3|const QDir &,const QString &

/*
[1]void setFile(const QString & file)
[2]void setFile(const QFile & file)
[3]void setFile(const QDir & dir, const QString & file)
*/

HB_FUNC_STATIC( QFILEINFO_SETFILE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFileInfo_setFile1();
  }
  else if( ISNUMPAR(1) && ISQFILE(1) )
  {
    QFileInfo_setFile2();
  }
  else if( ISNUMPAR(2) && ISQDIR(1) && ISCHAR(2) )
  {
    QFileInfo_setFile3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setFile

$prototype=qint64 size() const
$method=|qint64|size|

$prototypeV2=QString suffix() const

$prototypeV2=QString symLinkTarget() const

$extraMethods

#pragma ENDDUMP
