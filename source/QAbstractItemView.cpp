/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAbstractItemView>

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


HB_FUNC( QABSTRACTITEMVIEW_DELETE )
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
HB_FUNC( QABSTRACTITEMVIEW_ALTERNATINGROWCOLORS )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->alternatingRowColors (  );
    hb_retl( b );
  }
}


/*
int autoScrollMargin () const
*/
HB_FUNC( QABSTRACTITEMVIEW_AUTOSCROLLMARGIN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->autoScrollMargin (  );
    hb_retni( i );
  }
}


/*
void closePersistentEditor ( const QModelIndex & index )
*/
HB_FUNC( QABSTRACTITEMVIEW_CLOSEPERSISTENTEDITOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->closePersistentEditor ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QModelIndex currentIndex () const
*/
HB_FUNC( QABSTRACTITEMVIEW_CURRENTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->currentIndex (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );  }
}


/*
Qt::DropAction defaultDropAction () const
*/
HB_FUNC( QABSTRACTITEMVIEW_DEFAULTDROPACTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->defaultDropAction (  );
    hb_retni( i );
  }
}


/*
DragDropMode dragDropMode () const
*/
HB_FUNC( QABSTRACTITEMVIEW_DRAGDROPMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->dragDropMode (  );
    hb_retni( i );
  }
}


/*
bool dragDropOverwriteMode () const
*/
HB_FUNC( QABSTRACTITEMVIEW_DRAGDROPOVERWRITEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->dragDropOverwriteMode (  );
    hb_retl( b );
  }
}


/*
bool dragEnabled () const
*/
HB_FUNC( QABSTRACTITEMVIEW_DRAGENABLED )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->dragEnabled (  );
    hb_retl( b );
  }
}


/*
EditTriggers editTriggers () const
*/
HB_FUNC( QABSTRACTITEMVIEW_EDITTRIGGERS )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->editTriggers (  );
    hb_retni( i );
  }
}


/*
bool hasAutoScroll () const
*/
HB_FUNC( QABSTRACTITEMVIEW_HASAUTOSCROLL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasAutoScroll (  );
    hb_retl( b );
  }
}


/*
ScrollMode horizontalScrollMode () const
*/
HB_FUNC( QABSTRACTITEMVIEW_HORIZONTALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->horizontalScrollMode (  );
    hb_retni( i );
  }
}


/*
QSize iconSize () const
*/
HB_FUNC( QABSTRACTITEMVIEW_ICONSIZE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
virtual QModelIndex indexAt ( const QPoint & point ) const = 0
*/
HB_FUNC( QABSTRACTITEMVIEW_INDEXAT )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );  }
}


/*
QWidget * indexWidget ( const QModelIndex & index ) const
*/
HB_FUNC( QABSTRACTITEMVIEW_INDEXWIDGET )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * ptr = obj->indexWidget ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
QAbstractItemDelegate * itemDelegate () const
*/
HB_FUNC( QABSTRACTITEMVIEW_ITEMDELEGATE1 )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );  }
}


/*
QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
*/
HB_FUNC( QABSTRACTITEMVIEW_ITEMDELEGATE2 )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAbstractItemDelegate * ptr = obj->itemDelegate ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );  }
}


//[1]QAbstractItemDelegate * itemDelegate () const
//[2]QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const

HB_FUNC( QABSTRACTITEMVIEW_ITEMDELEGATE )
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
HB_FUNC( QABSTRACTITEMVIEW_ITEMDELEGATEFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAbstractItemDelegate * ptr = obj->itemDelegateForColumn ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );  }
}


/*
QAbstractItemDelegate * itemDelegateForRow ( int row ) const
*/
HB_FUNC( QABSTRACTITEMVIEW_ITEMDELEGATEFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAbstractItemDelegate * ptr = obj->itemDelegateForRow ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );  }
}


/*
virtual void keyboardSearch ( const QString & search )
*/
HB_FUNC( QABSTRACTITEMVIEW_KEYBOARDSEARCH )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->keyboardSearch ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractItemModel * model () const
*/
HB_FUNC( QABSTRACTITEMVIEW_MODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * ptr = obj->model (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );  }
}


/*
void openPersistentEditor ( const QModelIndex & index )
*/
HB_FUNC( QABSTRACTITEMVIEW_OPENPERSISTENTEDITOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->openPersistentEditor ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QModelIndex rootIndex () const
*/
HB_FUNC( QABSTRACTITEMVIEW_ROOTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->rootIndex (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );  }
}


/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible ) = 0
*/
HB_FUNC( QABSTRACTITEMVIEW_SCROLLTO )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QAbstractItemView::EnsureVisible : hb_parni(2);
    obj->scrollTo ( *par1,  (QAbstractItemView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractItemView::SelectionBehavior selectionBehavior () const
*/
HB_FUNC( QABSTRACTITEMVIEW_SELECTIONBEHAVIOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->selectionBehavior (  );
    hb_retni( i );
  }
}


/*
QAbstractItemView::SelectionMode selectionMode () const
*/
HB_FUNC( QABSTRACTITEMVIEW_SELECTIONMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->selectionMode (  );
    hb_retni( i );
  }
}


/*
QItemSelectionModel * selectionModel () const
*/
HB_FUNC( QABSTRACTITEMVIEW_SELECTIONMODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelectionModel * ptr = obj->selectionModel (  );
    _qt4xhb_createReturnClass ( ptr, "QITEMSELECTIONMODEL" );  }
}


/*
void setAlternatingRowColors ( bool enable )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETALTERNATINGROWCOLORS )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setAlternatingRowColors ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoScroll ( bool enable )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETAUTOSCROLL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setAutoScroll ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoScrollMargin ( int margin )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETAUTOSCROLLMARGIN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAutoScrollMargin ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultDropAction ( Qt::DropAction dropAction )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETDEFAULTDROPACTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDefaultDropAction (  (Qt::DropAction) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDragDropMode ( DragDropMode behavior )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETDRAGDROPMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDragDropMode (  (QAbstractItemView::DragDropMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDragDropOverwriteMode ( bool overwrite )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETDRAGDROPOVERWRITEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setDragDropOverwriteMode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDragEnabled ( bool enable )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETDRAGENABLED )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setDragEnabled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDropIndicatorShown ( bool enable )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETDROPINDICATORSHOWN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setDropIndicatorShown ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEditTriggers ( EditTriggers triggers )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETEDITTRIGGERS )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setEditTriggers (  (QAbstractItemView::EditTrigger) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalScrollMode ( ScrollMode mode )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETHORIZONTALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setHorizontalScrollMode (  (QAbstractItemView::ScrollMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIconSize ( const QSize & size )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETICONSIZE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setIconSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIndexWidget ( const QModelIndex & index, QWidget * widget )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETINDEXWIDGET )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setIndexWidget ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETITEMDELEGATE )
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
HB_FUNC( QABSTRACTITEMVIEW_SETITEMDELEGATEFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAbstractItemDelegate * par2 = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItemDelegateForColumn ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemDelegateForRow ( int row, QAbstractItemDelegate * delegate )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETITEMDELEGATEFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAbstractItemDelegate * par2 = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItemDelegateForRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETMODEL )
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
HB_FUNC( QABSTRACTITEMVIEW_SETSELECTIONBEHAVIOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSelectionBehavior (  (QAbstractItemView::SelectionBehavior) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSelectionMode ( QAbstractItemView::SelectionMode mode )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETSELECTIONMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSelectionMode (  (QAbstractItemView::SelectionMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETSELECTIONMODEL )
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
HB_FUNC( QABSTRACTITEMVIEW_SETTABKEYNAVIGATION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setTabKeyNavigation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextElideMode ( Qt::TextElideMode mode )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETTEXTELIDEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextElideMode (  (Qt::TextElideMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalScrollMode ( ScrollMode mode )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETVERTICALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVerticalScrollMode (  (QAbstractItemView::ScrollMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool showDropIndicator () const
*/
HB_FUNC( QABSTRACTITEMVIEW_SHOWDROPINDICATOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->showDropIndicator (  );
    hb_retl( b );
  }
}


/*
virtual int sizeHintForColumn ( int column ) const
*/
HB_FUNC( QABSTRACTITEMVIEW_SIZEHINTFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->sizeHintForColumn ( par1 );
    hb_retni( i );
  }
}


/*
QSize sizeHintForIndex ( const QModelIndex & index ) const
*/
HB_FUNC( QABSTRACTITEMVIEW_SIZEHINTFORINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * ptr = new QSize( obj->sizeHintForIndex ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
virtual int sizeHintForRow ( int row ) const
*/
HB_FUNC( QABSTRACTITEMVIEW_SIZEHINTFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->sizeHintForRow ( par1 );
    hb_retni( i );
  }
}


/*
bool tabKeyNavigation () const
*/
HB_FUNC( QABSTRACTITEMVIEW_TABKEYNAVIGATION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->tabKeyNavigation (  );
    hb_retl( b );
  }
}


/*
Qt::TextElideMode textElideMode () const
*/
HB_FUNC( QABSTRACTITEMVIEW_TEXTELIDEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->textElideMode (  );
    hb_retni( i );
  }
}


/*
ScrollMode verticalScrollMode () const
*/
HB_FUNC( QABSTRACTITEMVIEW_VERTICALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->verticalScrollMode (  );
    hb_retni( i );
  }
}


/*
virtual QRect visualRect ( const QModelIndex & index ) const = 0
*/
HB_FUNC( QABSTRACTITEMVIEW_VISUALRECT )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->visualRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );  }
}


/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC( QABSTRACTITEMVIEW_INPUTMETHODQUERY )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery (  (Qt::InputMethodQuery) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
void clearSelection ()
*/
HB_FUNC( QABSTRACTITEMVIEW_CLEARSELECTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearSelection (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void edit ( const QModelIndex & index )
*/
HB_FUNC( QABSTRACTITEMVIEW_EDIT )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->edit ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void reset ()
*/
HB_FUNC( QABSTRACTITEMVIEW_RESET )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scrollToBottom ()
*/
HB_FUNC( QABSTRACTITEMVIEW_SCROLLTOBOTTOM )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scrollToBottom (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scrollToTop ()
*/
HB_FUNC( QABSTRACTITEMVIEW_SCROLLTOTOP )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scrollToTop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void selectAll ()
*/
HB_FUNC( QABSTRACTITEMVIEW_SELECTALL )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentIndex ( const QModelIndex & index )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETCURRENTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCurrentIndex ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC( QABSTRACTITEMVIEW_SETROOTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setRootIndex ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void update ( const QModelIndex & index )
*/
HB_FUNC( QABSTRACTITEMVIEW_UPDATE )
{
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->update ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




