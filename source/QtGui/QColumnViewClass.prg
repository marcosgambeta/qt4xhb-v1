/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QRECT

CLASS QColumnView INHERIT QAbstractItemView

   DATA class_id INIT Class_Id_QColumnView
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD columnWidths
   METHOD previewWidget
   METHOD resizeGripsVisible
   METHOD setColumnWidths
   METHOD setPreviewWidget
   METHOD setResizeGripsVisible
   METHOD indexAt
   METHOD scrollTo
   METHOD selectAll
   METHOD setModel
   METHOD setRootIndex
   METHOD setSelectionModel
   METHOD sizeHint
   METHOD visualRect
   METHOD onUpdatePreviewWidget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QColumnView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QColumnView>

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
QColumnView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_NEW )
{
  QColumnView * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QColumnView ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColumnView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QCOLUMNVIEW_DELETE )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<int> columnWidths () const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_COLUMNWIDTHS )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<int> list = obj->columnWidths (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QWidget * previewWidget () const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_PREVIEWWIDGET )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->previewWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
bool resizeGripsVisible () const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_RESIZEGRIPSVISIBLE )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->resizeGripsVisible (  ) );
  }
}


/*
void setColumnWidths ( const QList<int> & list )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SETCOLUMNWIDTHS )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<int> par1;
PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aValues1);
int temp1;
for (i1=0;i1<nLen1;i1++)
{
temp1 = hb_arrayGetNI(aValues1, i1+1);
par1 << temp1;
}
    obj->setColumnWidths ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPreviewWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SETPREVIEWWIDGET )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPreviewWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResizeGripsVisible ( bool visible )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SETRESIZEGRIPSVISIBLE )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setResizeGripsVisible ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QModelIndex indexAt ( const QPoint & point ) const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_INDEXAT )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SCROLLTO )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QColumnView::EnsureVisible : hb_parni(2);
    obj->scrollTo ( *par1,  (QColumnView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void selectAll ()
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SELECTALL )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SETMODEL )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SETROOTINDEX )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setRootIndex ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSelectionModel ( QItemSelectionModel * newSelectionModel )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SETSELECTIONMODEL )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelectionModel * par1 = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSelectionModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SIZEHINT )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QRect visualRect ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_VISUALRECT )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->visualRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}





#pragma ENDDUMP
