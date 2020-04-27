/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QStateMachineSlots.h"

QStateMachineSlots::QStateMachineSlots( QObject *parent ) : QObject( parent )
{
}

QStateMachineSlots::~QStateMachineSlots()
{
}

void QStateMachineSlots::started()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "started()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSTATEMACHINE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QStateMachineSlots::stopped()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "stopped()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSTATEMACHINE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QStateMachineSlots_connect_signal( const QString & signal, const QString & slot )
{
  QStateMachine * obj = (QStateMachine *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QStateMachineSlots * s = QCoreApplication::instance()->findChild<QStateMachineSlots *>();

    if( s == NULL )
    {
      s = new QStateMachineSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
