/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsColorizeEffectSlots.h"

QGraphicsColorizeEffectSlots::QGraphicsColorizeEffectSlots( QObject * parent ) : QObject( parent )
{
}

QGraphicsColorizeEffectSlots::~QGraphicsColorizeEffectSlots()
{
}

void QGraphicsColorizeEffectSlots::colorChanged( const QColor & color )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "colorChanged(QColor)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QGRAPHICSCOLORIZEEFFECT" );
    PHB_ITEM pColor = Qt4xHb::Signals_return_object( ( void * ) &color, "QCOLOR" );

    hb_vmEvalBlockV( cb, 2, pSender, pColor );

    hb_itemRelease( pSender );
    hb_itemRelease( pColor );
  }
}

void QGraphicsColorizeEffectSlots::strengthChanged( qreal strength )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "strengthChanged(qreal)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QGRAPHICSCOLORIZEEFFECT" );
    PHB_ITEM pStrength = hb_itemPutND( NULL, strength );

    hb_vmEvalBlockV( cb, 2, pSender, pStrength );

    hb_itemRelease( pSender );
    hb_itemRelease( pStrength );
  }
}

void QGraphicsColorizeEffectSlots_connect_signal( const QString & signal, const QString & slot )
{
  QGraphicsColorizeEffect * obj = qobject_cast< QGraphicsColorizeEffect * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QGraphicsColorizeEffectSlots * s = QCoreApplication::instance()->findChild<QGraphicsColorizeEffectSlots *>();

    if( s == NULL )
    {
      s = new QGraphicsColorizeEffectSlots();
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
