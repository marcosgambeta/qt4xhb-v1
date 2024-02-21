/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGroupBoxSlots.hpp"

QGroupBoxSlots::QGroupBoxSlots(QObject * parent) : QObject(parent)
{
}

QGroupBoxSlots::~QGroupBoxSlots()
{
}

void QGroupBoxSlots::clicked( bool checked )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "clicked(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGROUPBOX");
    PHB_ITEM pChecked = hb_itemPutL( NULL, checked );

    hb_vmEvalBlockV( cb, 2, pSender, pChecked );

    hb_itemRelease( pSender );
    hb_itemRelease( pChecked );
  }
}

void QGroupBoxSlots::toggled( bool on )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "toggled(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGROUPBOX");
    PHB_ITEM pOn = hb_itemPutL( NULL, on );

    hb_vmEvalBlockV( cb, 2, pSender, pOn );

    hb_itemRelease( pSender );
    hb_itemRelease( pOn );
  }
}

void QGroupBoxSlots_connect_signal( const QString & signal, const QString & slot )
{
  QGroupBox * obj = qobject_cast<QGroupBox*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QGroupBoxSlots * s = QCoreApplication::instance()->findChild<QGroupBoxSlots*>();

    if( s == NULL )
    {
      s = new QGroupBoxSlots();
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
