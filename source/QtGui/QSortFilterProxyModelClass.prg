/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QREGEXP
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QITEMSELECTION
REQUEST QMIMEDATA
REQUEST QSIZE

CLASS QSortFilterProxyModel INHERIT QAbstractProxyModel

   DATA class_id INIT Class_Id_QSortFilterProxyModel
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD dynamicSortFilter
   METHOD filterCaseSensitivity
   METHOD filterKeyColumn
   METHOD filterRegExp
   METHOD filterRole
   METHOD isSortLocaleAware
   METHOD setDynamicSortFilter
   METHOD setFilterCaseSensitivity
   METHOD setFilterKeyColumn
   METHOD setFilterRegExp1
   METHOD setFilterRole
   METHOD setSortCaseSensitivity
   METHOD setSortLocaleAware
   METHOD setSortRole
   METHOD sortCaseSensitivity
   METHOD sortColumn
   METHOD sortOrder
   METHOD sortRole
   METHOD buddy
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD dropMimeData
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD headerData
   METHOD index
   METHOD insertColumns
   METHOD insertRows
   METHOD mapFromSource
   METHOD mapSelectionFromSource
   METHOD mapSelectionToSource
   METHOD mapToSource
   METHOD match
   METHOD mimeData
   METHOD mimeTypes
   METHOD parent
   METHOD removeColumns
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD setHeaderData
   METHOD setSourceModel
   METHOD sort
   METHOD span
   METHOD supportedDropActions
   METHOD invalidate
   METHOD setFilterFixedString
   METHOD setFilterRegExp2
   METHOD setFilterRegExp
   METHOD setFilterWildcard
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSortFilterProxyModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSortFilterProxyModel>

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

#include <QItemSelection>
#include <QStringList>
#include <QSize>

/*
QSortFilterProxyModel ( QObject * parent = 0 )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_NEW )
{
  QSortFilterProxyModel * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSortFilterProxyModel ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSortFilterProxyModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QSORTFILTERPROXYMODEL_DELETE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool dynamicSortFilter () const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_DYNAMICSORTFILTER )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->dynamicSortFilter (  );
    hb_retl( b );
  }
}


/*
Qt::CaseSensitivity filterCaseSensitivity () const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_FILTERCASESENSITIVITY )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->filterCaseSensitivity (  );
    hb_retni( i );
  }
}


/*
int filterKeyColumn () const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_FILTERKEYCOLUMN )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->filterKeyColumn (  );
    hb_retni( i );
  }
}


/*
QRegExp filterRegExp () const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_FILTERREGEXP )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegExp * ptr = new QRegExp( obj->filterRegExp (  ) );
    _qt4xhb_createReturnClass ( ptr, "QREGEXP", true );  }
}


/*
int filterRole () const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_FILTERROLE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->filterRole (  );
    hb_retni( i );
  }
}


/*
bool isSortLocaleAware () const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_ISSORTLOCALEAWARE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isSortLocaleAware (  );
    hb_retl( b );
  }
}


/*
void setDynamicSortFilter ( bool enable )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETDYNAMICSORTFILTER )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setDynamicSortFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFilterCaseSensitivity ( Qt::CaseSensitivity cs )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETFILTERCASESENSITIVITY )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFilterCaseSensitivity (  (Qt::CaseSensitivity) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFilterKeyColumn ( int column )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETFILTERKEYCOLUMN )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFilterKeyColumn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFilterRegExp ( const QRegExp & regExp )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP1 )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegExp * par1 = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFilterRegExp ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFilterRole ( int role )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETFILTERROLE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFilterRole ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSortCaseSensitivity ( Qt::CaseSensitivity cs )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETSORTCASESENSITIVITY )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSortCaseSensitivity (  (Qt::CaseSensitivity) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSortLocaleAware ( bool on )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETSORTLOCALEAWARE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setSortLocaleAware ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSortRole ( int role )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETSORTROLE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSortRole ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::CaseSensitivity sortCaseSensitivity () const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SORTCASESENSITIVITY )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->sortCaseSensitivity (  );
    hb_retni( i );
  }
}


/*
int sortColumn () const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SORTCOLUMN )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->sortColumn (  );
    hb_retni( i );
  }
}


/*
Qt::SortOrder sortOrder () const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SORTORDER )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->sortOrder (  );
    hb_retni( i );
  }
}


/*
int sortRole () const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SORTROLE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->sortRole (  );
    hb_retni( i );
  }
}


/*
virtual QModelIndex buddy ( const QModelIndex & index ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_BUDDY )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->buddy ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );  }
}


/*
virtual bool canFetchMore ( const QModelIndex & parent ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_CANFETCHMORE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->canFetchMore ( *par1 );
    hb_retl( b );
  }
}


/*
virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_COLUMNCOUNT )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->columnCount ( par1 );
    hb_retni( i );
  }
}


/*
virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_DATA )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? Qt::DisplayRole : hb_parni(2);
    QVariant * ptr = new QVariant( obj->data ( *par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_DROPMIMEDATA )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMimeData * par1 = (const QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    QModelIndex * par5 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->dropMimeData ( par1,  (Qt::DropAction) par2, par3, par4, *par5 );
    hb_retl( b );
  }
}


/*
virtual void fetchMore ( const QModelIndex & parent )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_FETCHMORE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->fetchMore ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_FLAGS )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->flags ( *par1 );
    hb_retni( i );
  }
}


/*
virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_HASCHILDREN )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->hasChildren ( par1 );
    hb_retl( b );
  }
}


/*
virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_HEADERDATA )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = ISNIL(3)? Qt::DisplayRole : hb_parni(3);
    QVariant * ptr = new QVariant( obj->headerData ( par1,  (Qt::Orientation) par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_INDEX )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->index ( par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );  }
}


/*
virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_INSERTCOLUMNS )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->insertColumns ( par1, par2, par3 );
    hb_retl( b );
  }
}


/*
virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_INSERTROWS )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->insertRows ( par1, par2, par3 );
    hb_retl( b );
  }
}


/*
virtual QModelIndex mapFromSource ( const QModelIndex & sourceIndex ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_MAPFROMSOURCE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->mapFromSource ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );  }
}


/*
virtual QItemSelection mapSelectionFromSource ( const QItemSelection & sourceSelection ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_MAPSELECTIONFROMSOURCE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelection * par1 = (QItemSelection *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QItemSelection * ptr = new QItemSelection( obj->mapSelectionFromSource ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QITEMSELECTION" );  }
}


/*
virtual QItemSelection mapSelectionToSource ( const QItemSelection & proxySelection ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_MAPSELECTIONTOSOURCE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelection * par1 = (QItemSelection *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QItemSelection * ptr = new QItemSelection( obj->mapSelectionToSource ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QITEMSELECTION" );  }
}


/*
virtual QModelIndex mapToSource ( const QModelIndex & proxyIndex ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_MAPTOSOURCE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->mapToSource ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );  }
}


/*
virtual QModelIndexList match ( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_MATCH )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QVariant * par3 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? 1 : hb_parni(4);
    int par5 = ISNIL(5)? (int) Qt::MatchStartsWith | Qt::MatchWrap : hb_parni(5);
    QModelIndexList list = obj->match ( *par1, par2, *par3, par4,  (Qt::MatchFlags) par5 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMODELINDEX" );
    #else
    pDynSym = hb_dynsymFindName( "QMODELINDEX" );
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
        hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
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
virtual QMimeData * mimeData ( const QModelIndexList & indexes ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_MIMEDATA )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndexList * par1 = (QModelIndexList *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QMimeData * ptr = obj->mimeData ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QMIMEDATA" );  }
}


/*
virtual QStringList mimeTypes () const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_MIMETYPES )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->mimeTypes (  );
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
virtual QModelIndex parent ( const QModelIndex & child ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_PARENT )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->parent ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );  }
}


/*
virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_REMOVECOLUMNS )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->removeColumns ( par1, par2, par3 );
    hb_retl( b );
  }
}


/*
virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_REMOVEROWS )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->removeRows ( par1, par2, par3 );
    hb_retl( b );
  }
}


/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_ROWCOUNT )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->rowCount ( par1 );
    hb_retni( i );
  }
}


/*
virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETDATA )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? Qt::EditRole : hb_parni(3);
    bool b = obj->setData ( *par1, *par2, par3 );
    hb_retl( b );
  }
}


/*
virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETHEADERDATA )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QVariant * par3 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? Qt::EditRole : hb_parni(4);
    bool b = obj->setHeaderData ( par1,  (Qt::Orientation) par2, *par3, par4 );
    hb_retl( b );
  }
}


/*
virtual void setSourceModel ( QAbstractItemModel * sourceModel )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETSOURCEMODEL )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSourceModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SORT )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
    obj->sort ( par1,  (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize span ( const QModelIndex & index ) const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SPAN )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * ptr = new QSize( obj->span ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
virtual Qt::DropActions supportedDropActions () const
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SUPPORTEDDROPACTIONS )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->supportedDropActions (  );
    hb_retni( i );
  }
}


/*
void invalidate ()
*/
HB_FUNC( QSORTFILTERPROXYMODEL_INVALIDATE )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFilterFixedString ( const QString & pattern )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETFILTERFIXEDSTRING )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFilterFixedString ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFilterRegExp ( const QString & pattern )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP2 )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFilterRegExp ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setFilterRegExp ( const QRegExp & regExp )
//[2]void setFilterRegExp ( const QString & pattern )

HB_FUNC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    HB_FUNC_EXEC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP2 );
  }
}

/*
void setFilterWildcard ( const QString & pattern )
*/
HB_FUNC( QSORTFILTERPROXYMODEL_SETFILTERWILDCARD )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFilterWildcard ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
