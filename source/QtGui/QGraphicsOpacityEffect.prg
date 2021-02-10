/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
#endif

CLASS QGraphicsOpacityEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD opacityMask
   METHOD setOpacity
   METHOD setOpacityMask

   METHOD onOpacityChanged
   METHOD onOpacityMaskChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsOpacityEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QGraphicsOpacityEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QGraphicsOpacityEffect( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || ISNIL( 1 ) ) )
  {
    QGraphicsOpacityEffect * obj = new QGraphicsOpacityEffect( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_DELETE )
{
  QGraphicsOpacityEffect * obj = static_cast< QGraphicsOpacityEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
qreal opacity() const
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_OPACITY )
{
  QGraphicsOpacityEffect * obj = static_cast< QGraphicsOpacityEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQREAL( obj->opacity() );
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
QBrush opacityMask() const
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_OPACITYMASK )
{
  QGraphicsOpacityEffect * obj = static_cast< QGraphicsOpacityEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QBrush * ptr = new QBrush( obj->opacityMask() );
      Qt4xHb::createReturnClass( ptr, "QBRUSH", true );
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
void setOpacity( qreal opacity )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_SETOPACITY )
{
  QGraphicsOpacityEffect * obj = static_cast< QGraphicsOpacityEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setOpacity( PQREAL( 1 ) );
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
void setOpacityMask( const QBrush & mask )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_SETOPACITYMASK )
{
  QGraphicsOpacityEffect * obj = static_cast< QGraphicsOpacityEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQBRUSH( 1 ) )
    {
#endif
      obj->setOpacityMask( *PQBRUSH( 1 ) );
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

void QGraphicsOpacityEffectSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_ONOPACITYCHANGED )
{
  QGraphicsOpacityEffectSlots_connect_signal( "opacityChanged(qreal)", "opacityChanged(qreal)" );
}

HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_ONOPACITYMASKCHANGED )
{
  QGraphicsOpacityEffectSlots_connect_signal( "opacityMaskChanged(QBrush)", "opacityMaskChanged(QBrush)" );
}

#pragma ENDDUMP
