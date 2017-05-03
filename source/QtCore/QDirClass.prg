/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFILEINFO
REQUEST QDIR
REQUEST QCHAR
#endif

CLASS QDir

   DATA pointer
   DATA class_id INIT Class_Id_QDir
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD absolutePath
   METHOD canonicalPath
   METHOD cd
   METHOD cdUp
   METHOD count
   METHOD dirName
   METHOD entryInfoList1
   METHOD entryInfoList2
   METHOD entryInfoList
   METHOD entryList1
   METHOD entryList2
   METHOD entryList
   METHOD exists1
   METHOD exists2
   METHOD exists
   METHOD filePath
   METHOD filter
   METHOD isAbsolute
   METHOD isReadable
   METHOD isRelative
   METHOD isRoot
   METHOD makeAbsolute
   METHOD mkdir
   METHOD mkpath
   METHOD nameFilters
   METHOD path
   METHOD refresh
   METHOD relativeFilePath
   METHOD remove
   METHOD rename
   METHOD rmdir
   METHOD rmpath
   METHOD setFilter
   METHOD setNameFilters
   METHOD setPath
   METHOD setSorting
   METHOD sorting
   METHOD addSearchPath
   METHOD cleanPath
   METHOD current
   METHOD currentPath
   METHOD drives
   METHOD fromNativeSeparators
   METHOD home
   METHOD homePath
   METHOD isAbsolutePath
   METHOD isRelativePath
   METHOD match1
   METHOD match2
   METHOD match
   METHOD root
   METHOD rootPath
   METHOD searchPaths
   METHOD separator
   METHOD setCurrent
   METHOD setSearchPaths
   METHOD temp
   METHOD tempPath
   METHOD toNativeSeparators
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDir
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDir>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QDir(const QDir & dir)
*/
HB_FUNC_STATIC( QDIR_NEW1 )
{
  QDir * o = NULL;
  QDir * par1 = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDir ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDir *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDir(const QString & path = QString())
*/
HB_FUNC_STATIC( QDIR_NEW2 )
{
  QDir * o = NULL;
  QString par1 = ISNIL(1)? QString() : hb_parc(1);
  o = new QDir ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDir *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)
*/
HB_FUNC_STATIC( QDIR_NEW3 )
{
  QDir * o = NULL;
  int par3 = ISNIL(3)? (int) QDir::Name | QDir::IgnoreCase : hb_parni(3);
  int par4 = ISNIL(4)? (int) QDir::AllEntries : hb_parni(4);
  o = new QDir ( PQSTRING(1), PQSTRING(2), (QDir::SortFlags) par3, (QDir::Filters) par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDir *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QDir(const QDir & dir)
//[2]QDir(const QString & path = QString())
//[3]QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)

HB_FUNC_STATIC( QDIR_NEW )
{
  if( ISNUMPAR(1) && ISQDIR(1) )
  {
    HB_FUNC_EXEC( QDIR_NEW1 );
  }
  else if( ISBETWEEN(0,1) && (ISCHAR(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDIR_NEW2 );
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISCHAR(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDIR_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDIR_DELETE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString absoluteFilePath(const QString & fileName) const
*/
HB_FUNC_STATIC( QDIR_ABSOLUTEFILEPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->absoluteFilePath ( PQSTRING(1) );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString absolutePath() const
*/
HB_FUNC_STATIC( QDIR_ABSOLUTEPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->absolutePath (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString canonicalPath() const
*/
HB_FUNC_STATIC( QDIR_CANONICALPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->canonicalPath (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool cd(const QString & dirName)
*/
HB_FUNC_STATIC( QDIR_CD )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->cd ( PQSTRING(1) ) );
  }
}


/*
bool cdUp()
*/
HB_FUNC_STATIC( QDIR_CDUP )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->cdUp (  ) );
  }
}


/*
uint count() const
*/
HB_FUNC_STATIC( QDIR_COUNT )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->count (  ) );
  }
}


/*
QString dirName() const
*/
HB_FUNC_STATIC( QDIR_DIRNAME )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->dirName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
HB_FUNC_STATIC( QDIR_ENTRYINFOLIST1 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QDir::NoFilter : hb_parni(2);
  int par3 = ISNIL(3)? (int) QDir::NoSort : hb_parni(3);
  if( obj )
  {
    QStringList par1 = _qt4xhb_convert_array_parameter_to_qstringlist(1);
    //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
    //int i1;
    //int nLen1 = hb_arrayLen(aStrings1);
    //for (i1=0;i1<nLen1;i1++)
    //{
    //  QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
    //  par1 << temp;
    //}
    QFileInfoList list = obj->entryInfoList ( par1, (QDir::Filters) par2, (QDir::SortFlags) par3 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QFILEINFO" );
    #else
    pDynSym = hb_dynsymFindName( "QFILEINFO" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
HB_FUNC_STATIC( QDIR_ENTRYINFOLIST2 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFileInfoList list = obj->entryInfoList ( ISNIL(1)? QDir::NoFilter : (QDir::Filters) hb_parni(1), ISNIL(2)? QDir::NoSort : (QDir::SortFlags) hb_parni(2) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QFILEINFO" );
    #else
    pDynSym = hb_dynsymFindName( "QFILEINFO" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


//[1]QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
//[2]QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const

HB_FUNC_STATIC( QDIR_ENTRYINFOLIST )
{
  if( ISBETWEEN(1,3) && ISARRAY(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDIR_ENTRYINFOLIST1 );
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDIR_ENTRYINFOLIST2 );
  }
}

/*
QStringList entryList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
HB_FUNC_STATIC( QDIR_ENTRYLIST1 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  int par3 = ISNIL(3)? (int) QDir::NoSort : hb_parni(3);
  if( obj )
  {
    QStringList par1 = _qt4xhb_convert_array_parameter_to_qstringlist(1);
    //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
    //int i1;
    //int nLen1 = hb_arrayLen(aStrings1);
    //for (i1=0;i1<nLen1;i1++)
    //{
    //  QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
    //  par1 << temp;
    //}
    QStringList strl = obj->entryList ( par1, ISNIL(2)? QDir::NoFilter : (QDir::Filters) hb_parni(2), (QDir::SortFlags) par3 );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
HB_FUNC_STATIC( QDIR_ENTRYLIST2 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QDir::NoSort : hb_parni(2);
  if( obj )
  {
    QStringList strl = obj->entryList ( ISNIL(1)? QDir::NoFilter : (QDir::Filters) hb_parni(1), (QDir::SortFlags) par2 );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


//[1]QStringList entryList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
//[2]QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const

HB_FUNC_STATIC( QDIR_ENTRYLIST )
{
  if( ISBETWEEN(1,3) && ISARRAY(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDIR_ENTRYLIST1 );
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDIR_ENTRYLIST2 );
  }
}

/*
bool exists(const QString & name) const
*/
HB_FUNC_STATIC( QDIR_EXISTS1 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->exists ( PQSTRING(1) ) );
  }
}


/*
bool exists() const
*/
HB_FUNC_STATIC( QDIR_EXISTS2 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->exists (  ) );
  }
}


//[1]bool exists(const QString & name) const
//[2]bool exists() const

HB_FUNC_STATIC( QDIR_EXISTS )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDIR_EXISTS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDIR_EXISTS2 );
  }
}

/*
QString filePath(const QString & fileName) const
*/
HB_FUNC_STATIC( QDIR_FILEPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->filePath ( PQSTRING(1) );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
Filters filter() const
*/
HB_FUNC_STATIC( QDIR_FILTER )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->filter (  ) );
  }
}


/*
bool isAbsolute() const
*/
HB_FUNC_STATIC( QDIR_ISABSOLUTE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isAbsolute (  ) );
  }
}


/*
bool isReadable() const
*/
HB_FUNC_STATIC( QDIR_ISREADABLE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isReadable (  ) );
  }
}


/*
bool isRelative() const
*/
HB_FUNC_STATIC( QDIR_ISRELATIVE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isRelative (  ) );
  }
}


/*
bool isRoot() const
*/
HB_FUNC_STATIC( QDIR_ISROOT )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isRoot (  ) );
  }
}


/*
bool makeAbsolute()
*/
HB_FUNC_STATIC( QDIR_MAKEABSOLUTE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->makeAbsolute (  ) );
  }
}


/*
bool mkdir(const QString & dirName) const
*/
HB_FUNC_STATIC( QDIR_MKDIR )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->mkdir ( PQSTRING(1) ) );
  }
}


/*
bool mkpath(const QString & dirPath) const
*/
HB_FUNC_STATIC( QDIR_MKPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->mkpath ( PQSTRING(1) ) );
  }
}


/*
QStringList nameFilters() const
*/
HB_FUNC_STATIC( QDIR_NAMEFILTERS )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->nameFilters (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QString path() const
*/
HB_FUNC_STATIC( QDIR_PATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->path (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void refresh() const
*/
HB_FUNC_STATIC( QDIR_REFRESH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->refresh (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString relativeFilePath(const QString & fileName) const
*/
HB_FUNC_STATIC( QDIR_RELATIVEFILEPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->relativeFilePath ( PQSTRING(1) );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool remove(const QString & fileName)
*/
HB_FUNC_STATIC( QDIR_REMOVE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->remove ( PQSTRING(1) ) );
  }
}



/*
bool rename(const QString & oldName, const QString & newName)
*/
HB_FUNC_STATIC( QDIR_RENAME )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->rename ( PQSTRING(1), PQSTRING(2) ) );
  }
}


/*
bool rmdir(const QString & dirName) const
*/
HB_FUNC_STATIC( QDIR_RMDIR )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->rmdir ( PQSTRING(1) ) );
  }
}


/*
bool rmpath(const QString & dirPath) const
*/
HB_FUNC_STATIC( QDIR_RMPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->rmpath ( PQSTRING(1) ) );
  }
}


/*
void setFilter(Filters filters)
*/
HB_FUNC_STATIC( QDIR_SETFILTER )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFilter (  (QDir::Filters) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNameFilters(const QStringList & nameFilters)
*/
HB_FUNC_STATIC( QDIR_SETNAMEFILTERS )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList par1 = _qt4xhb_convert_array_parameter_to_qstringlist(1);
    //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
    //int i1;
    //int nLen1 = hb_arrayLen(aStrings1);
    //for (i1=0;i1<nLen1;i1++)
    //{
    //  QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
    //  par1 << temp;
    //}
    obj->setNameFilters ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_SETPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPath ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSorting(SortFlags sort)
*/
HB_FUNC_STATIC( QDIR_SETSORTING )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSorting (  (QDir::SortFlags) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
SortFlags sorting() const
*/
HB_FUNC_STATIC( QDIR_SORTING )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->sorting (  ) );
  }
}




/*
void addSearchPath(const QString & prefix, const QString & path)
*/
HB_FUNC_STATIC( QDIR_ADDSEARCHPATH )
{
  QDir::addSearchPath ( PQSTRING(1), PQSTRING(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString cleanPath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_CLEANPATH )
{
  QString str1 = QDir::cleanPath ( PQSTRING(1) );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QDir current()
*/
HB_FUNC_STATIC( QDIR_CURRENT )
{
  QDir * ptr = new QDir( QDir::current (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDIR", true );
}


/*
QString currentPath()
*/
HB_FUNC_STATIC( QDIR_CURRENTPATH )
{
  QString str1 = QDir::currentPath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QFileInfoList drives()
*/
HB_FUNC_STATIC( QDIR_DRIVES )
{
  QFileInfoList list = QDir::drives (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QFILEINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QFILEINFO" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
QString fromNativeSeparators(const QString & pathName)
*/
HB_FUNC_STATIC( QDIR_FROMNATIVESEPARATORS )
{
  QString str1 = QDir::fromNativeSeparators ( PQSTRING(1) );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QDir home()
*/
HB_FUNC_STATIC( QDIR_HOME )
{
  QDir * ptr = new QDir( QDir::home (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDIR", true );
}


/*
QString homePath()
*/
HB_FUNC_STATIC( QDIR_HOMEPATH )
{
  QString str1 = QDir::homePath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
bool isAbsolutePath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_ISABSOLUTEPATH )
{
  hb_retl( QDir::isAbsolutePath ( PQSTRING(1) ) );
}


/*
bool isRelativePath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_ISRELATIVEPATH )
{
  hb_retl( QDir::isRelativePath ( PQSTRING(1) ) );
}


/*
bool match(const QString & filter, const QString & fileName)
*/
HB_FUNC_STATIC( QDIR_MATCH1 )
{
  hb_retl( QDir::match ( PQSTRING(1), PQSTRING(2) ) );
}


/*
bool match(const QStringList & filters, const QString & fileName)
*/
HB_FUNC_STATIC( QDIR_MATCH2 )
{
  QStringList par1 = _qt4xhb_convert_array_parameter_to_qstringlist(1);
  //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
  //int i1;
  //int nLen1 = hb_arrayLen(aStrings1);
  //for (i1=0;i1<nLen1;i1++)
  //{
  //  QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
  //  par1 << temp;
  //}
  hb_retl( QDir::match ( par1, PQSTRING(2) ) );
}


//[1]bool match(const QString & filter, const QString & fileName)
//[2]bool match(const QStringList & filters, const QString & fileName)

HB_FUNC_STATIC( QDIR_MATCH )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDIR_MATCH1 );
  }
  else if( ISNUMPAR(2) && ISARRAY(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDIR_MATCH2 );
  }
}

/*
QDir root()
*/
HB_FUNC_STATIC( QDIR_ROOT )
{
  QDir * ptr = new QDir( QDir::root (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDIR", true );
}


/*
QString rootPath()
*/
HB_FUNC_STATIC( QDIR_ROOTPATH )
{
  QString str1 = QDir::rootPath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QStringList searchPaths(const QString & prefix)
*/
HB_FUNC_STATIC( QDIR_SEARCHPATHS )
{
  QStringList strl = QDir::searchPaths ( PQSTRING(1) );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<strl.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}


/*
QChar separator()
*/
HB_FUNC_STATIC( QDIR_SEPARATOR )
{
  QChar * ptr = new QChar( QDir::separator (  ) );
  _qt4xhb_createReturnClass ( ptr, "QCHAR" );
}


/*
bool setCurrent(const QString & path)
*/
HB_FUNC_STATIC( QDIR_SETCURRENT )
{
  hb_retl( QDir::setCurrent ( PQSTRING(1) ) );
}


/*
void setSearchPaths(const QString & prefix, const QStringList & searchPaths)
*/
HB_FUNC_STATIC( QDIR_SETSEARCHPATHS )
{
  QStringList par2 = _qt4xhb_convert_array_parameter_to_qstringlist(2);
  //PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
  //int i2;
  //int nLen2 = hb_arrayLen(aStrings2);
  //for (i2=0;i2<nLen2;i2++)
  //{
  //  QString temp = hb_arrayGetCPtr(aStrings2, i2+1);
  //  par2 << temp;
  //}
  QDir::setSearchPaths ( PQSTRING(1), par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDir temp()
*/
HB_FUNC_STATIC( QDIR_TEMP )
{
  QDir * ptr = new QDir( QDir::temp (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDIR", true );
}


/*
QString tempPath()
*/
HB_FUNC_STATIC( QDIR_TEMPPATH )
{
  QString str1 = QDir::tempPath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString toNativeSeparators(const QString & pathName)
*/
HB_FUNC_STATIC( QDIR_TONATIVESEPARATORS )
{
  QString str1 = QDir::toNativeSeparators ( PQSTRING(1) );
  hb_retc( (const char *) str1.toLatin1().data() );
}


HB_FUNC_STATIC( QDIR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDIR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDIR_NEWFROM );
}

HB_FUNC_STATIC( QDIR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDIR_NEWFROM );
}

HB_FUNC_STATIC( QDIR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDIR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
