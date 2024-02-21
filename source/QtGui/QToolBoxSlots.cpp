/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QToolBoxSlots.hpp"

QToolBoxSlots::QToolBoxSlots(QObject * parent) : QObject(parent)
{
}

QToolBoxSlots::~QToolBoxSlots()
{
}

void QToolBoxSlots::currentChanged( int index )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentChanged(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTOOLBOX");
    PHB_ITEM pIndex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, pSender, pIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pIndex );
  }
}

void QToolBoxSlots_connect_signal( const QString & signal, const QString & slot )
{
  QToolBox * obj = qobject_cast<QToolBox*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QToolBoxSlots * s = QCoreApplication::instance()->findChild<QToolBoxSlots*>();

    if( s == NULL )
    {
      s = new QToolBoxSlots();
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
