/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QABSTRACTITEMDELEGATE
REQUEST QABSTRACTITEMMODEL
REQUEST QITEMSELECTIONMODEL
REQUEST QRECT
REQUEST QVARIANT
#endif

CLASS QAbstractItemView INHERIT QAbstractScrollArea

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD alternatingRowColors
   METHOD autoScrollMargin
   METHOD closePersistentEditor
   METHOD currentIndex
   METHOD defaultDropAction
   METHOD dragDropMode
   METHOD dragDropOverwriteMode
   METHOD dragEnabled
   METHOD editTriggers
   METHOD hasAutoScroll
   METHOD horizontalScrollMode
   METHOD iconSize
   METHOD indexAt
   METHOD indexWidget
   METHOD itemDelegate1
   METHOD itemDelegate2
   METHOD itemDelegate
   METHOD itemDelegateForColumn
   METHOD itemDelegateForRow
   METHOD keyboardSearch
   METHOD model
   METHOD openPersistentEditor
   METHOD rootIndex
   METHOD scrollTo
   METHOD selectionBehavior
   METHOD selectionMode
   METHOD selectionModel
   METHOD setAlternatingRowColors
   METHOD setAutoScroll
   METHOD setAutoScrollMargin
   METHOD setDefaultDropAction
   METHOD setDragDropMode
   METHOD setDragDropOverwriteMode
   METHOD setDragEnabled
   METHOD setDropIndicatorShown
   METHOD setEditTriggers
   METHOD setHorizontalScrollMode
   METHOD setIconSize
   METHOD setIndexWidget
   METHOD setItemDelegate
   METHOD setItemDelegateForColumn
   METHOD setItemDelegateForRow
   METHOD setModel
   METHOD setSelectionBehavior
   METHOD setSelectionMode
   METHOD setSelectionModel
   METHOD setTabKeyNavigation
   METHOD setTextElideMode
   METHOD setVerticalScrollMode
   METHOD showDropIndicator
   METHOD sizeHintForColumn
   METHOD sizeHintForIndex
   METHOD sizeHintForRow
   METHOD tabKeyNavigation
   METHOD textElideMode
   METHOD verticalScrollMode
   METHOD visualRect
   METHOD inputMethodQuery
   METHOD clearSelection
   METHOD edit
   METHOD reset
   METHOD scrollToBottom
   METHOD scrollToTop
   METHOD selectAll
   METHOD setCurrentIndex
   METHOD setRootIndex
   METHOD update

   METHOD onActivated
   METHOD onClicked
   METHOD onDoubleClicked
   METHOD onEntered
   METHOD onPressed
   METHOD onViewportEntered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractItemView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractItemView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QABSTRACTITEMVIEW_DELETE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool alternatingRowColors () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ALTERNATINGROWCOLORS )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->alternatingRowColors () );
  }
}

/*
int autoScrollMargin () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_AUTOSCROLLMARGIN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->autoScrollMargin () );
  }
}

/*
void closePersistentEditor ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_CLOSEPERSISTENTEDITOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->closePersistentEditor ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QModelIndex currentIndex () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_CURRENTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->currentIndex () );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
Qt::DropAction defaultDropAction () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DEFAULTDROPACTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->defaultDropAction () );
  }
}

/*
DragDropMode dragDropMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DRAGDROPMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->dragDropMode () );
  }
}

/*
bool dragDropOverwriteMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DRAGDROPOVERWRITEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->dragDropOverwriteMode () );
  }
}

/*
bool dragEnabled () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DRAGENABLED )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->dragEnabled () );
  }
}

/*
EditTriggers editTriggers () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_EDITTRIGGERS )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->editTriggers () );
  }
}

/*
bool hasAutoScroll () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_HASAUTOSCROLL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasAutoScroll () );
  }
}

/*
ScrollMode horizontalScrollMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_HORIZONTALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->horizontalScrollMode () );
  }
}

/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ICONSIZE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QModelIndex indexAt ( const QPoint & point ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_INDEXAT )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
QWidget * indexWidget ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_INDEXWIDGET )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->indexWidget ( *PQMODELINDEX(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QAbstractItemDelegate * itemDelegate () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATE1 )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

/*
QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATE2 )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate ( *PQMODELINDEX(1) );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

//[1]QAbstractItemDelegate * itemDelegate () const
//[2]QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const

HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QABSTRACTITEMVIEW_ITEMDELEGATE1 );
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QABSTRACTITEMVIEW_ITEMDELEGATE2 );
  }
}

/*
QAbstractItemDelegate * itemDelegateForColumn ( int column ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATEFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegateForColumn ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

/*
QAbstractItemDelegate * itemDelegateForRow ( int row ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATEFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegateForRow ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

/*
virtual void keyboardSearch ( const QString & search )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_KEYBOARDSEARCH )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->keyboardSearch ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_MODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * ptr = obj->model ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}

/*
void openPersistentEditor ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_OPENPERSISTENTEDITOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->openPersistentEditor ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QModelIndex rootIndex () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ROOTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->rootIndex () );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible ) = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SCROLLTO )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QAbstractItemView::EnsureVisible : hb_parni(2);
    obj->scrollTo ( *PQMODELINDEX(1), (QAbstractItemView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractItemView::SelectionBehavior selectionBehavior () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SELECTIONBEHAVIOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->selectionBehavior () );
  }
}

/*
QAbstractItemView::SelectionMode selectionMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SELECTIONMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->selectionMode () );
  }
}

/*
QItemSelectionModel * selectionModel () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SELECTIONMODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelectionModel * ptr = obj->selectionModel ();
    _qt4xhb_createReturnClass ( ptr, "QITEMSELECTIONMODEL" );
  }
}

/*
void setAlternatingRowColors ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETALTERNATINGROWCOLORS )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAlternatingRowColors ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoScroll ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETAUTOSCROLL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoScroll ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoScrollMargin ( int margin )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETAUTOSCROLLMARGIN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoScrollMargin ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultDropAction ( Qt::DropAction dropAction )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDEFAULTDROPACTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDefaultDropAction ( (Qt::DropAction) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDragDropMode ( DragDropMode behavior )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDRAGDROPMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDragDropMode ( (QAbstractItemView::DragDropMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDragDropOverwriteMode ( bool overwrite )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDRAGDROPOVERWRITEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDragDropOverwriteMode ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDragEnabled ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDRAGENABLED )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDragEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDropIndicatorShown ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDROPINDICATORSHOWN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDropIndicatorShown ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEditTriggers ( EditTriggers triggers )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETEDITTRIGGERS )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setEditTriggers ( (QAbstractItemView::EditTrigger) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHorizontalScrollMode ( ScrollMode mode )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETHORIZONTALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setHorizontalScrollMode ( (QAbstractItemView::ScrollMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIconSize ( const QSize & size )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETICONSIZE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIconSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIndexWidget ( const QModelIndex & index, QWidget * widget )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETINDEXWIDGET )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIndexWidget ( *PQMODELINDEX(1), PQWIDGET(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETITEMDELEGATE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * par1 = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItemDelegate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemDelegateForColumn ( int column, QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETITEMDELEGATEFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * par2 = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItemDelegateForColumn ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemDelegateForRow ( int row, QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETITEMDELEGATEFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * par2 = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItemDelegateForRow ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETMODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelectionBehavior ( QAbstractItemView::SelectionBehavior behavior )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETSELECTIONBEHAVIOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSelectionBehavior ( (QAbstractItemView::SelectionBehavior) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelectionMode ( QAbstractItemView::SelectionMode mode )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETSELECTIONMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSelectionMode ( (QAbstractItemView::SelectionMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETSELECTIONMODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelectionModel * par1 = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSelectionModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabKeyNavigation ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETTABKEYNAVIGATION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTabKeyNavigation ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextElideMode ( Qt::TextElideMode mode )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETTEXTELIDEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextElideMode ( (Qt::TextElideMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalScrollMode ( ScrollMode mode )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETVERTICALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVerticalScrollMode ( (QAbstractItemView::ScrollMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool showDropIndicator () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SHOWDROPINDICATOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->showDropIndicator () );
  }
}

/*
virtual int sizeHintForColumn ( int column ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SIZEHINTFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->sizeHintForColumn ( PINT(1) ) );
  }
}

/*
QSize sizeHintForIndex ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SIZEHINTFORINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHintForIndex ( *PQMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual int sizeHintForRow ( int row ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SIZEHINTFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->sizeHintForRow ( PINT(1) ) );
  }
}

/*
bool tabKeyNavigation () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_TABKEYNAVIGATION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->tabKeyNavigation () );
  }
}

/*
Qt::TextElideMode textElideMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_TEXTELIDEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->textElideMode () );
  }
}

/*
ScrollMode verticalScrollMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_VERTICALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->verticalScrollMode () );
  }
}

/*
virtual QRect visualRect ( const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_VISUALRECT )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->visualRect ( *PQMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_INPUTMETHODQUERY )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
void clearSelection ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_CLEARSELECTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearSelection ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void edit ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_EDIT )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->edit ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void reset ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_RESET )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scrollToBottom ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SCROLLTOBOTTOM )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scrollToBottom ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scrollToTop ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SCROLLTOTOP )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scrollToTop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void selectAll ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SELECTALL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectAll ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETCURRENTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentIndex ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETROOTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRootIndex ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_UPDATE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->update ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
