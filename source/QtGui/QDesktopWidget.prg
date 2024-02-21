/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QDesktopWidget INHERIT QWidget

   METHOD availableGeometry
   METHOD isVirtualDesktop
   METHOD primaryScreen
   METHOD screen
   METHOD screenCount
   METHOD screenGeometry
   METHOD screenNumber

   METHOD onResized
   METHOD onScreenCountChanged
   METHOD onWorkAreaResized

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDesktopWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QDesktopWidget>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC( QDESKTOPWIDGET_AVAILABLEGEOMETRY )
{
  if( ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)) )
  {
    /*
    const QRect availableGeometry( int screen = -1 ) const
    */
    QDesktopWidget * obj = qobject_cast<QDesktopWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QRect * ptr = new QRect( obj->availableGeometry( OPINT( 1, -1 )) );
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    /*
    const QRect availableGeometry( const QWidget * widget ) const
    */
    QDesktopWidget * obj = qobject_cast<QDesktopWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QRect * ptr = new QRect( obj->availableGeometry( PQWIDGET(1)) );
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    /*
    const QRect availableGeometry( const QPoint & p ) const
    */
    QDesktopWidget * obj = qobject_cast<QDesktopWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QRect * ptr = new QRect( obj->availableGeometry( *PQPOINT(1)) );
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool isVirtualDesktop() const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_ISVIRTUALDESKTOP )
{
  QDesktopWidget * obj = qobject_cast<QDesktopWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVirtualDesktop() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int primaryScreen() const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_PRIMARYSCREEN )
{
  QDesktopWidget * obj = qobject_cast<QDesktopWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->primaryScreen() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QWidget * screen( int screen = -1 )
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREEN )
{
  QDesktopWidget * obj = qobject_cast<QDesktopWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)) )
    {
#endif
      QWidget * ptr = obj->screen( OPINT( 1, -1 ) );
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int screenCount() const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENCOUNT )
{
  QDesktopWidget * obj = qobject_cast<QDesktopWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->screenCount() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENGEOMETRY )
{
  if( ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)) )
  {
    /*
    const QRect screenGeometry( int screen = -1 ) const
    */
    QDesktopWidget * obj = qobject_cast<QDesktopWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QRect * ptr = new QRect( obj->screenGeometry( OPINT( 1, -1 )) );
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    /*
    const QRect screenGeometry( const QWidget * widget ) const
    */
    QDesktopWidget * obj = qobject_cast<QDesktopWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QRect * ptr = new QRect( obj->screenGeometry( PQWIDGET(1)) );
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    /*
    const QRect screenGeometry( const QPoint & p ) const
    */
    QDesktopWidget * obj = qobject_cast<QDesktopWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QRect * ptr = new QRect( obj->screenGeometry( *PQPOINT(1)) );
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENNUMBER )
{
  if( ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)) )
  {
    /*
    int screenNumber( const QWidget * widget = 0 ) const
    */
    QDesktopWidget * obj = qobject_cast<QDesktopWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      RINT( obj->screenNumber( OPQWIDGET( 1, 0 )) );
    }
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    /*
    int screenNumber( const QPoint & point ) const
    */
    QDesktopWidget * obj = qobject_cast<QDesktopWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      RINT( obj->screenNumber( *PQPOINT(1)) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

void QDesktopWidgetSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QDESKTOPWIDGET_ONRESIZED )
{
  QDesktopWidgetSlots_connect_signal("resized(int)", "resized(int)");
}

HB_FUNC_STATIC( QDESKTOPWIDGET_ONSCREENCOUNTCHANGED )
{
  QDesktopWidgetSlots_connect_signal("screenCountChanged(int)", "screenCountChanged(int)");
}

HB_FUNC_STATIC( QDESKTOPWIDGET_ONWORKAREARESIZED )
{
  QDesktopWidgetSlots_connect_signal("workAreaResized(int)", "workAreaResized(int)");
}

#pragma ENDDUMP
