$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QStackedWidget INHERIT QFrame

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD count
   METHOD currentIndex
   METHOD currentWidget
   METHOD indexOf
   METHOD insertWidget
   METHOD removeWidget
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

   METHOD onCurrentChanged
   METHOD onWidgetRemoved

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QStackedWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStackedWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_NEW )
{
  QStackedWidget * o = new QStackedWidget ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
int addWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_ADDWIDGET )
{
  QStackedWidget * obj = (QStackedWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->addWidget ( PQWIDGET(1) ) );
  }
}

/*
int count () const
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_COUNT )
{
  QStackedWidget * obj = (QStackedWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
int currentIndex () const
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_CURRENTINDEX )
{
  QStackedWidget * obj = (QStackedWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentIndex () );
  }
}

/*
QWidget * currentWidget () const
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_CURRENTWIDGET )
{
  QStackedWidget * obj = (QStackedWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->currentWidget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
int indexOf ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_INDEXOF )
{
  QStackedWidget * obj = (QStackedWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indexOf ( PQWIDGET(1) ) );
  }
}

/*
int insertWidget ( int index, QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_INSERTWIDGET )
{
  QStackedWidget * obj = (QStackedWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->insertWidget ( PINT(1), PQWIDGET(2) ) );
  }
}

/*
void removeWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_REMOVEWIDGET )
{
  QStackedWidget * obj = (QStackedWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * widget ( int index ) const
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_WIDGET )
{
  QStackedWidget * obj = (QStackedWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget ( PINT(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_SETCURRENTINDEX )
{
  QStackedWidget * obj = (QStackedWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentIndex ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_SETCURRENTWIDGET )
{
  QStackedWidget * obj = (QStackedWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
