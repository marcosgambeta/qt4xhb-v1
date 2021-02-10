/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QLabelSlots.h"

QLabelSlots::QLabelSlots( QObject * parent ) : QObject( parent )
{
}

QLabelSlots::~QLabelSlots()
{
}

void QLabelSlots::linkActivated( const QString & link )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "linkActivated(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( static_cast< QObject * >( object ), "QLABEL" );
    PHB_ITEM plink = hb_itemPutC( NULL, QSTRINGTOSTRING( link ) );

    hb_vmEvalBlockV( cb, 2, psender, plink );

    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

void QLabelSlots::linkHovered( const QString & link )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "linkHovered(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( static_cast< QObject * >( object ), "QLABEL" );
    PHB_ITEM plink = hb_itemPutC( NULL, QSTRINGTOSTRING( link ) );

    hb_vmEvalBlockV( cb, 2, psender, plink );

    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

void QLabelSlots_connect_signal( const QString & signal, const QString & slot )
{
  QLabel * obj = static_cast< QLabel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    QLabelSlots * s = QCoreApplication::instance()->findChild<QLabelSlots *>();

    if( s == NULL )
    {
      s = new QLabelSlots();
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
