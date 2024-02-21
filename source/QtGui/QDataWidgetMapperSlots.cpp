/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDataWidgetMapperSlots.hpp"

QDataWidgetMapperSlots::QDataWidgetMapperSlots(QObject * parent) : QObject(parent)
{
}

QDataWidgetMapperSlots::~QDataWidgetMapperSlots()
{
}

void QDataWidgetMapperSlots::currentIndexChanged( int index )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentIndexChanged(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDATAWIDGETMAPPER");
    PHB_ITEM pIndex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, pSender, pIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pIndex );
  }
}

void QDataWidgetMapperSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDataWidgetMapper * obj = qobject_cast<QDataWidgetMapper*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QDataWidgetMapperSlots * s = QCoreApplication::instance()->findChild<QDataWidgetMapperSlots*>();

    if( s == NULL )
    {
      s = new QDataWidgetMapperSlots();
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
