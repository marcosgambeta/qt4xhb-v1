/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QStatusBar INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addPermanentWidget
   METHOD addWidget
   METHOD currentMessage
   METHOD insertPermanentWidget
   METHOD insertWidget
   METHOD isSizeGripEnabled
   METHOD removeWidget
   METHOD setSizeGripEnabled
   METHOD clearMessage
   METHOD showMessage

   METHOD onMessageChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStatusBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStatusBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QStatusBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QStatusBar * obj = new QStatusBar( OPQWIDGET(1,0) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTATUSBAR_DELETE )
{
  QStatusBar * obj = (QStatusBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
void addPermanentWidget ( QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_ADDPERMANENTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQWIDGET(1) && ISOPTNUM(2) )
    {
#endif
      obj->addPermanentWidget( PQWIDGET(1), OPINT(2,0) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addWidget ( QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_ADDWIDGET )
{
  QStatusBar * obj = (QStatusBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQWIDGET(1) && ISOPTNUM(2) )
    {
#endif
      obj->addWidget( PQWIDGET(1), OPINT(2,0) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString currentMessage() const
*/
HB_FUNC_STATIC( QSTATUSBAR_CURRENTMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->currentMessage() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int insertPermanentWidget ( int index, QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_INSERTPERMANENTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQWIDGET(2) && ISOPTNUM(3) )
    {
#endif
      RINT( obj->insertPermanentWidget( PINT(1), PQWIDGET(2), OPINT(3,0) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int insertWidget ( int index, QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_INSERTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQWIDGET(2) && ISOPTNUM(3) )
    {
#endif
      RINT( obj->insertWidget( PINT(1), PQWIDGET(2), OPINT(3,0) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isSizeGripEnabled() const
*/
HB_FUNC_STATIC( QSTATUSBAR_ISSIZEGRIPENABLED )
{
  QStatusBar * obj = (QStatusBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSizeGripEnabled() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void removeWidget( QWidget * widget )
*/
HB_FUNC_STATIC( QSTATUSBAR_REMOVEWIDGET )
{
  QStatusBar * obj = (QStatusBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->removeWidget( PQWIDGET(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeGripEnabled( bool )
*/
HB_FUNC_STATIC( QSTATUSBAR_SETSIZEGRIPENABLED )
{
  QStatusBar * obj = (QStatusBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSizeGripEnabled( PBOOL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearMessage()
*/
HB_FUNC_STATIC( QSTATUSBAR_CLEARMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearMessage();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMessage ( const QString & message, int timeout = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_SHOWMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
    {
#endif
      obj->showMessage( PQSTRING(1), OPINT(2,0) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QStatusBarSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSTATUSBAR_ONMESSAGECHANGED )
{
  QStatusBarSlots_connect_signal( "messageChanged(QString)", "messageChanged(QString)" );
}

#pragma ENDDUMP
