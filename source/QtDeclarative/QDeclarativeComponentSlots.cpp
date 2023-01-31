/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDeclarativeComponentSlots.hpp"

QDeclarativeComponentSlots::QDeclarativeComponentSlots(QObject * parent) : QObject(parent)
{
}

QDeclarativeComponentSlots::~QDeclarativeComponentSlots()
{
}

void QDeclarativeComponentSlots::progressChanged( qreal progress )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "progressChanged(qreal)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDECLARATIVECOMPONENT");
    PHB_ITEM pProgress = hb_itemPutND( NULL, progress );

    hb_vmEvalBlockV( cb, 2, pSender, pProgress );

    hb_itemRelease( pSender );
    hb_itemRelease( pProgress );
  }
}

void QDeclarativeComponentSlots::statusChanged( QDeclarativeComponent::Status status )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "statusChanged(QDeclarativeComponent::Status)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDECLARATIVECOMPONENT");
    PHB_ITEM pStatus = hb_itemPutNI( NULL, static_cast<int >( status ) );

    hb_vmEvalBlockV( cb, 2, pSender, pStatus );

    hb_itemRelease( pSender );
    hb_itemRelease( pStatus );
  }
}

void QDeclarativeComponentSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDeclarativeComponent * obj = qobject_cast<QDeclarativeComponent*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QDeclarativeComponentSlots * s = QCoreApplication::instance()->findChild<QDeclarativeComponentSlots*>();

    if( s == NULL )
    {
      s = new QDeclarativeComponentSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt4xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
