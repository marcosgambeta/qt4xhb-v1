/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QShortcutSlots.h"

QShortcutSlots::QShortcutSlots( QObject * parent ) : QObject( parent )
{
}

QShortcutSlots::~QShortcutSlots()
{
}

void QShortcutSlots::activated()
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "activated()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QSHORTCUT" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QShortcutSlots::activatedAmbiguously()
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "activatedAmbiguously()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QSHORTCUT" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QShortcutSlots_connect_signal( const QString & signal, const QString & slot )
{
  QShortcut * obj = qobject_cast< QShortcut * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QShortcutSlots * s = QCoreApplication::instance()->findChild<QShortcutSlots *>();

    if( s == NULL )
    {
      s = new QShortcutSlots();
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
