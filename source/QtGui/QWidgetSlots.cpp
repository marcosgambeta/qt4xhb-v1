/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWidgetSlots.h"

QWidgetSlots::QWidgetSlots(QObject * parent) : QObject(parent)
{
}

QWidgetSlots::~QWidgetSlots()
{
}

void QWidgetSlots::customContextMenuRequested( const QPoint & pos )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "customContextMenuRequested(QPoint)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWIDGET");
    PHB_ITEM pPos = Qt4xHb::Signals_return_object( ( void * ) &pos, "QPOINT");

    hb_vmEvalBlockV( cb, 2, pSender, pPos );

    hb_itemRelease( pSender );
    hb_itemRelease( pPos );
  }
}

void QWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QWidget * obj = qobject_cast<QWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QWidgetSlots * s = QCoreApplication::instance()->findChild<QWidgetSlots*>();

    if( s == NULL )
    {
      s = new QWidgetSlots();
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
