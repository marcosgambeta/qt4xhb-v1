$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QItemSelectionModel INHERIT QObject

   METHOD new
   METHOD delete
   METHOD columnIntersectsSelection
   METHOD currentIndex
   METHOD hasSelection
   METHOD isColumnSelected
   METHOD isRowSelected
   METHOD isSelected
   METHOD model
   METHOD rowIntersectsSelection
   METHOD selectedColumns
   METHOD selectedIndexes
   METHOD selectedRows
   METHOD selection
   METHOD clear
   METHOD clearSelection
   METHOD reset
   METHOD select
   METHOD setCurrentIndex

   METHOD onCurrentChanged
   METHOD onCurrentColumnChanged
   METHOD onCurrentRowChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QItemSelectionModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QItemSelectionModel ( QAbstractItemModel * model )
*/
$internalConstructor=|new1|QAbstractItemModel *

/*
QItemSelectionModel ( QAbstractItemModel * model, QObject * parent )
*/
$internalConstructor=|new2|QAbstractItemModel *,QObject *

//[1]QItemSelectionModel ( QAbstractItemModel * model )
//[2]QItemSelectionModel ( QAbstractItemModel * model, QObject * parent )

HB_FUNC_STATIC( QITEMSELECTIONMODEL_NEW )
{
  if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
  {
    QItemSelectionModel_new1();
  }
  else if( ISNUMPAR(2) && ISQABSTRACTITEMMODEL(1) && ISQOBJECT(2) )
  {
    QItemSelectionModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool columnIntersectsSelection ( int column, const QModelIndex & parent ) const
*/
$method=|bool|columnIntersectsSelection|int,const QModelIndex &

/*
QModelIndex currentIndex () const
*/
$method=|QModelIndex|currentIndex|

/*
bool hasSelection () const
*/
$method=|bool|hasSelection|

/*
bool isColumnSelected ( int column, const QModelIndex & parent ) const
*/
$method=|bool|isColumnSelected|int,const QModelIndex &

/*
bool isRowSelected ( int row, const QModelIndex & parent ) const
*/
$method=|bool|isRowSelected|int,const QModelIndex &

/*
bool isSelected ( const QModelIndex & index ) const
*/
$method=|bool|isSelected|const QModelIndex &

/*
const QAbstractItemModel * model () const
*/
$method=|const QAbstractItemModel *|model|

/*
bool rowIntersectsSelection ( int row, const QModelIndex & parent ) const
*/
$method=|bool|rowIntersectsSelection|int,const QModelIndex &

/*
QModelIndexList selectedColumns ( int row = 0 ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDCOLUMNS )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QModelIndexList list = obj->selectedColumns ( OPINT(1,0) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
QModelIndexList selectedIndexes () const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDINDEXES )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QModelIndexList list = obj->selectedIndexes ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
QModelIndexList selectedRows ( int column = 0 ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDROWS )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QModelIndexList list = obj->selectedRows ( OPINT(1,0) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
const QItemSelection selection () const
*/
$method=|const QItemSelection|selection|

/*
virtual void clear ()
*/
$virtualMethod=|void|clear|

/*
void clearSelection ()
*/
$method=|void|clearSelection|

/*
virtual void reset ()
*/
$virtualMethod=|void|reset|

/*
virtual void select ( const QModelIndex & index, QItemSelectionModel::SelectionFlags command )
*/
$internalVirtualMethod=|void|select,select1|const QModelIndex &,QItemSelectionModel::SelectionFlags

/*
virtual void select ( const QItemSelection & selection, QItemSelectionModel::SelectionFlags command )
*/
$internalVirtualMethod=|void|select,select2|const QItemSelection &,QItemSelectionModel::SelectionFlags

//[1]virtual void select ( const QModelIndex & index, QItemSelectionModel::SelectionFlags command )
//[2]virtual void select ( const QItemSelection & selection, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECT )
{
  if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISNUM(2) )
  {
    QItemSelectionModel_select1();
  }
  else if( ISNUMPAR(2) && ISQITEMSELECTION(1) && ISNUM(2) )
  {
    QItemSelectionModel_select2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCurrentIndex ( const QModelIndex & index, QItemSelectionModel::SelectionFlags command )
*/
$method=|void|setCurrentIndex|const QModelIndex &,QItemSelectionModel::SelectionFlags

#pragma ENDDUMP
