/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsScaleSlots.h"

QGraphicsScaleSlots::QGraphicsScaleSlots( QObject * parent ) : QObject( parent )
{
}

QGraphicsScaleSlots::~QGraphicsScaleSlots()
{
}

void QGraphicsScaleSlots::originChanged()
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "originChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QGRAPHICSSCALE" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QGraphicsScaleSlots::scaleChanged()
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "scaleChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QGRAPHICSSCALE" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QGraphicsScaleSlots::xScaleChanged()
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "xScaleChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QGRAPHICSSCALE" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QGraphicsScaleSlots::yScaleChanged()
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "yScaleChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QGRAPHICSSCALE" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QGraphicsScaleSlots::zScaleChanged()
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "zScaleChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QGRAPHICSSCALE" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QGraphicsScaleSlots_connect_signal( const QString & signal, const QString & slot )
{
  QGraphicsScale * obj = qobject_cast< QGraphicsScale * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QGraphicsScaleSlots * s = QCoreApplication::instance()->findChild<QGraphicsScaleSlots *>();

    if( s == NULL )
    {
      s = new QGraphicsScaleSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt4xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
