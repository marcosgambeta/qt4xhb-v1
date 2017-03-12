/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSCROLLBAR
REQUEST QSIZE
#endif

CLASS QAbstractScrollArea INHERIT QFrame

   DATA class_id INIT Class_Id_QAbstractScrollArea
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD addScrollBarWidget
   METHOD cornerWidget
   METHOD horizontalScrollBar
   METHOD horizontalScrollBarPolicy
   METHOD maximumViewportSize
   METHOD scrollBarWidgets
   METHOD setCornerWidget
   METHOD setHorizontalScrollBar
   METHOD setHorizontalScrollBarPolicy
   METHOD setVerticalScrollBar
   METHOD setVerticalScrollBarPolicy
   METHOD setViewport
   METHOD verticalScrollBar
   METHOD verticalScrollBarPolicy
   METHOD viewport
   METHOD minimumSizeHint
   METHOD sizeHint
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractScrollArea
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractScrollArea>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QABSTRACTSCROLLAREA_DELETE )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addScrollBarWidget ( QWidget * widget, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_ADDSCROLLBARWIDGET )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->addScrollBarWidget ( par1,  (Qt::Alignment) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * cornerWidget () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_CORNERWIDGET )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->cornerWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
QScrollBar * horizontalScrollBar () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_HORIZONTALSCROLLBAR )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScrollBar * ptr = obj->horizontalScrollBar (  );
    _qt4xhb_createReturnClass ( ptr, "QSCROLLBAR" );
  }
}


/*
Qt::ScrollBarPolicy horizontalScrollBarPolicy () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_HORIZONTALSCROLLBARPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->horizontalScrollBarPolicy (  ) );
  }
}


/*
QSize maximumViewportSize () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_MAXIMUMVIEWPORTSIZE )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumViewportSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QWidgetList scrollBarWidgets ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SCROLLBARWIDGETS )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidgetList list = obj->scrollBarWidgets (  (Qt::Alignment) par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWIDGET" );
    #else
    pDynSym = hb_dynsymFindName( "QWIDGET" );
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
        hb_itemPutPtr( pItem, (QWidget *) list[i] );
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
void setCornerWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETCORNERWIDGET )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCornerWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalScrollBar ( QScrollBar * scrollBar )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETHORIZONTALSCROLLBAR )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScrollBar * par1 = (QScrollBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setHorizontalScrollBar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalScrollBarPolicy ( Qt::ScrollBarPolicy )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETHORIZONTALSCROLLBARPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setHorizontalScrollBarPolicy (  (Qt::ScrollBarPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalScrollBar ( QScrollBar * scrollBar )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETVERTICALSCROLLBAR )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScrollBar * par1 = (QScrollBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setVerticalScrollBar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalScrollBarPolicy ( Qt::ScrollBarPolicy )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETVERTICALSCROLLBARPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVerticalScrollBarPolicy (  (Qt::ScrollBarPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewport ( QWidget * widget )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETVIEWPORT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setViewport ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScrollBar * verticalScrollBar () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_VERTICALSCROLLBAR )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScrollBar * ptr = obj->verticalScrollBar (  );
    _qt4xhb_createReturnClass ( ptr, "QSCROLLBAR" );
  }
}


/*
Qt::ScrollBarPolicy verticalScrollBarPolicy () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_VERTICALSCROLLBARPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->verticalScrollBarPolicy (  ) );
  }
}


/*
QWidget * viewport () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_VIEWPORT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->viewport (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_MINIMUMSIZEHINT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SIZEHINT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}




#pragma ENDDUMP
