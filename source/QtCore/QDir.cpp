/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDir>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QDir(const QDir & dir)
*/
HB_FUNC( QDIR_NEW1 )
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
HB_FUNC( QDIR_NEW2 )
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
HB_FUNC( QDIR_NEW3 )
{
  QDir * o = NULL;
  QString par1 = hb_parc(1);
  QString par2 = hb_parc(2);
  int par3 = ISNIL(3)? (int) QDir::Name | QDir::IgnoreCase : hb_parni(3);
  int par4 = ISNIL(4)? (int) QDir::AllEntries : hb_parni(4);
  o = new QDir ( par1, par2,  (QDir::SortFlags) par3,  (QDir::Filters) par4 );
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

HB_FUNC( QDIR_NEW )
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

HB_FUNC( QDIR_DELETE )
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
HB_FUNC( QDIR_ABSOLUTEFILEPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->absoluteFilePath ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString absolutePath() const
*/
HB_FUNC( QDIR_ABSOLUTEPATH )
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
HB_FUNC( QDIR_CANONICALPATH )
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
HB_FUNC( QDIR_CD )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->cd ( par1 );
    hb_retl( b );
  }
}


/*
bool cdUp()
*/
HB_FUNC( QDIR_CDUP )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->cdUp (  );
    hb_retl( b );
  }
}


/*
uint count() const
*/
HB_FUNC( QDIR_COUNT )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint i = obj->count (  );
    hb_retni( i );
  }
}


/*
QString dirName() const
*/
HB_FUNC( QDIR_DIRNAME )
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
HB_FUNC( QDIR_ENTRYINFOLIST1 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
par1 << temp;
}
    int par2 = ISNIL(2)? (int) QDir::NoFilter : hb_parni(2);
    int par3 = ISNIL(3)? (int) QDir::NoSort : hb_parni(3);
    QFileInfoList list = obj->entryInfoList ( par1,  (QDir::Filters) par2,  (QDir::SortFlags) par3 );
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
HB_FUNC( QDIR_ENTRYINFOLIST2 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QDir::NoFilter : hb_parni(1);
    int par2 = ISNIL(2)? (int) QDir::NoSort : hb_parni(2);
    QFileInfoList list = obj->entryInfoList (  (QDir::Filters) par1,  (QDir::SortFlags) par2 );
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

HB_FUNC( QDIR_ENTRYINFOLIST )
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
HB_FUNC( QDIR_ENTRYLIST1 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
par1 << temp;
}
    int par2 = ISNIL(2)? (int) QDir::NoFilter : hb_parni(2);
    int par3 = ISNIL(3)? (int) QDir::NoSort : hb_parni(3);
    QStringList strl = obj->entryList ( par1,  (QDir::Filters) par2,  (QDir::SortFlags) par3 );
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
HB_FUNC( QDIR_ENTRYLIST2 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QDir::NoFilter : hb_parni(1);
    int par2 = ISNIL(2)? (int) QDir::NoSort : hb_parni(2);
    QStringList strl = obj->entryList (  (QDir::Filters) par1,  (QDir::SortFlags) par2 );
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

HB_FUNC( QDIR_ENTRYLIST )
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
HB_FUNC( QDIR_EXISTS1 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->exists ( par1 );
    hb_retl( b );
  }
}


/*
bool exists() const
*/
HB_FUNC( QDIR_EXISTS2 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->exists (  );
    hb_retl( b );
  }
}


//[1]bool exists(const QString & name) const
//[2]bool exists() const

HB_FUNC( QDIR_EXISTS )
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
HB_FUNC( QDIR_FILEPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->filePath ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
Filters filter() const
*/
HB_FUNC( QDIR_FILTER )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->filter (  );
    hb_retni( i );
  }
}


/*
bool isAbsolute() const
*/
HB_FUNC( QDIR_ISABSOLUTE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isAbsolute (  );
    hb_retl( b );
  }
}


/*
bool isReadable() const
*/
HB_FUNC( QDIR_ISREADABLE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isReadable (  );
    hb_retl( b );
  }
}


/*
bool isRelative() const
*/
HB_FUNC( QDIR_ISRELATIVE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isRelative (  );
    hb_retl( b );
  }
}


/*
bool isRoot() const
*/
HB_FUNC( QDIR_ISROOT )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isRoot (  );
    hb_retl( b );
  }
}


/*
bool makeAbsolute()
*/
HB_FUNC( QDIR_MAKEABSOLUTE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->makeAbsolute (  );
    hb_retl( b );
  }
}


/*
bool mkdir(const QString & dirName) const
*/
HB_FUNC( QDIR_MKDIR )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->mkdir ( par1 );
    hb_retl( b );
  }
}


/*
bool mkpath(const QString & dirPath) const
*/
HB_FUNC( QDIR_MKPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->mkpath ( par1 );
    hb_retl( b );
  }
}


/*
QStringList nameFilters() const
*/
HB_FUNC( QDIR_NAMEFILTERS )
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
HB_FUNC( QDIR_PATH )
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
HB_FUNC( QDIR_REFRESH )
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
HB_FUNC( QDIR_RELATIVEFILEPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->relativeFilePath ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool remove(const QString & fileName)
*/
HB_FUNC( QDIR_REMOVE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->remove ( par1 );
    hb_retl( b );
  }
}



/*
bool rename(const QString & oldName, const QString & newName)
*/
HB_FUNC( QDIR_RENAME )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    bool b = obj->rename ( par1, par2 );
    hb_retl( b );
  }
}


/*
bool rmdir(const QString & dirName) const
*/
HB_FUNC( QDIR_RMDIR )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->rmdir ( par1 );
    hb_retl( b );
  }
}


/*
bool rmpath(const QString & dirPath) const
*/
HB_FUNC( QDIR_RMPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->rmpath ( par1 );
    hb_retl( b );
  }
}


/*
void setFilter(Filters filters)
*/
HB_FUNC( QDIR_SETFILTER )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFilter (  (QDir::Filters) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNameFilters(const QStringList & nameFilters)
*/
HB_FUNC( QDIR_SETNAMEFILTERS )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
par1 << temp;
}
    obj->setNameFilters ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPath(const QString & path)
*/
HB_FUNC( QDIR_SETPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setPath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSorting(SortFlags sort)
*/
HB_FUNC( QDIR_SETSORTING )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSorting (  (QDir::SortFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
SortFlags sorting() const
*/
HB_FUNC( QDIR_SORTING )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->sorting (  );
    hb_retni( i );
  }
}




/*
void addSearchPath(const QString & prefix, const QString & path)
*/
HB_FUNC( QDIR_ADDSEARCHPATH )
{
  QString par1 = hb_parc(1);
  QString par2 = hb_parc(2);
  QDir::addSearchPath ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString cleanPath(const QString & path)
*/
HB_FUNC( QDIR_CLEANPATH )
{
  QString par1 = hb_parc(1);
  QString str1 = QDir::cleanPath ( par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QDir current()
*/
HB_FUNC( QDIR_CURRENT )
{
  QDir * ptr = new QDir( QDir::current (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDIR", true );}


/*
QString currentPath()
*/
HB_FUNC( QDIR_CURRENTPATH )
{
  QString str1 = QDir::currentPath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QFileInfoList drives()
*/
HB_FUNC( QDIR_DRIVES )
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
HB_FUNC( QDIR_FROMNATIVESEPARATORS )
{
  QString par1 = hb_parc(1);
  QString str1 = QDir::fromNativeSeparators ( par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QDir home()
*/
HB_FUNC( QDIR_HOME )
{
  QDir * ptr = new QDir( QDir::home (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDIR", true );}


/*
QString homePath()
*/
HB_FUNC( QDIR_HOMEPATH )
{
  QString str1 = QDir::homePath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
bool isAbsolutePath(const QString & path)
*/
HB_FUNC( QDIR_ISABSOLUTEPATH )
{
  QString par1 = hb_parc(1);
  bool b = QDir::isAbsolutePath ( par1 );
  hb_retl( b );
}


/*
bool isRelativePath(const QString & path)
*/
HB_FUNC( QDIR_ISRELATIVEPATH )
{
  QString par1 = hb_parc(1);
  bool b = QDir::isRelativePath ( par1 );
  hb_retl( b );
}


/*
bool match(const QString & filter, const QString & fileName)
*/
HB_FUNC( QDIR_MATCH1 )
{
  QString par1 = hb_parc(1);
  QString par2 = hb_parc(2);
  bool b = QDir::match ( par1, par2 );
  hb_retl( b );
}


/*
bool match(const QStringList & filters, const QString & fileName)
*/
HB_FUNC( QDIR_MATCH2 )
{
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
par1 << temp;
}
  QString par2 = hb_parc(2);
  bool b = QDir::match ( par1, par2 );
  hb_retl( b );
}


//[1]bool match(const QString & filter, const QString & fileName)
//[2]bool match(const QStringList & filters, const QString & fileName)

HB_FUNC( QDIR_MATCH )
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
HB_FUNC( QDIR_ROOT )
{
  QDir * ptr = new QDir( QDir::root (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDIR", true );}


/*
QString rootPath()
*/
HB_FUNC( QDIR_ROOTPATH )
{
  QString str1 = QDir::rootPath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QStringList searchPaths(const QString & prefix)
*/
HB_FUNC( QDIR_SEARCHPATHS )
{
  QString par1 = hb_parc(1);
  QStringList strl = QDir::searchPaths ( par1 );
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
HB_FUNC( QDIR_SEPARATOR )
{
  QChar * ptr = new QChar( QDir::separator (  ) );
  _qt4xhb_createReturnClass ( ptr, "QCHAR" );}


/*
bool setCurrent(const QString & path)
*/
HB_FUNC( QDIR_SETCURRENT )
{
  QString par1 = hb_parc(1);
  bool b = QDir::setCurrent ( par1 );
  hb_retl( b );
}


/*
void setSearchPaths(const QString & prefix, const QStringList & searchPaths)
*/
HB_FUNC( QDIR_SETSEARCHPATHS )
{
  QString par1 = hb_parc(1);
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = hb_arrayGetCPtr(aStrings2, i2+1);
par2 << temp;
}
  QDir::setSearchPaths ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDir temp()
*/
HB_FUNC( QDIR_TEMP )
{
  QDir * ptr = new QDir( QDir::temp (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDIR", true );}


/*
QString tempPath()
*/
HB_FUNC( QDIR_TEMPPATH )
{
  QString str1 = QDir::tempPath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString toNativeSeparators(const QString & pathName)
*/
HB_FUNC( QDIR_TONATIVESEPARATORS )
{
  QString par1 = hb_parc(1);
  QString str1 = QDir::toNativeSeparators ( par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}



