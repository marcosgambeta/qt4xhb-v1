$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QScrollArea INHERIT QAbstractScrollArea

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD ensureVisible
   METHOD ensureWidgetVisible
   METHOD setAlignment
   METHOD setWidget
   METHOD setWidgetResizable
   METHOD takeWidget
   METHOD widget
   METHOD widgetResizable
   METHOD focusNextPrevChild
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScrollArea>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QScrollArea ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSCROLLAREA_NEW )
{
  QScrollArea * o = new QScrollArea ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QSCROLLAREA_DELETE )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QSCROLLAREA_ALIGNMENT )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->alignment () );
  }
}

/*
void ensureVisible ( int x, int y, int xmargin = 50, int ymargin = 50 )
*/
HB_FUNC_STATIC( QSCROLLAREA_ENSUREVISIBLE )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ensureVisible ( PINT(1), PINT(2), OPINT(3,50), OPINT(4,50) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ensureWidgetVisible ( QWidget * childWidget, int xmargin = 50, int ymargin = 50 )
*/
HB_FUNC_STATIC( QSCROLLAREA_ENSUREWIDGETVISIBLE )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ensureWidgetVisible ( PQWIDGET(1), OPINT(2,50), OPINT(3,50) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAlignment ( Qt::Alignment )
*/
HB_FUNC_STATIC( QSCROLLAREA_SETALIGNMENT )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment ( (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSCROLLAREA_SETWIDGET )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidgetResizable ( bool resizable )
*/
HB_FUNC_STATIC( QSCROLLAREA_SETWIDGETRESIZABLE )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWidgetResizable ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * takeWidget ()
*/
HB_FUNC_STATIC( QSCROLLAREA_TAKEWIDGET )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->takeWidget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QSCROLLAREA_WIDGET )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
bool widgetResizable () const
*/
HB_FUNC_STATIC( QSCROLLAREA_WIDGETRESIZABLE )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->widgetResizable () );
  }
}

/*
virtual bool focusNextPrevChild ( bool next )
*/
HB_FUNC_STATIC( QSCROLLAREA_FOCUSNEXTPREVCHILD )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->focusNextPrevChild ( PBOOL(1) ) );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSCROLLAREA_SIZEHINT )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
