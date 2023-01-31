/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QColorDialogSlots.h"

QColorDialogSlots::QColorDialogSlots(QObject * parent) : QObject(parent)
{
}

QColorDialogSlots::~QColorDialogSlots()
{
}

void QColorDialogSlots::colorSelected( const QColor & color )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "colorSelected(QColor)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCOLORDIALOG");
    PHB_ITEM pColor = Qt4xHb::Signals_return_object( ( void * ) &color, "QCOLOR");

    hb_vmEvalBlockV( cb, 2, pSender, pColor );

    hb_itemRelease( pSender );
    hb_itemRelease( pColor );
  }
}

void QColorDialogSlots::currentColorChanged( const QColor & color )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentColorChanged(QColor)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCOLORDIALOG");
    PHB_ITEM pColor = Qt4xHb::Signals_return_object( ( void * ) &color, "QCOLOR");

    hb_vmEvalBlockV( cb, 2, pSender, pColor );

    hb_itemRelease( pSender );
    hb_itemRelease( pColor );
  }
}

void QColorDialogSlots_connect_signal( const QString & signal, const QString & slot )
{
  QColorDialog * obj = qobject_cast<QColorDialog*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QColorDialogSlots * s = QCoreApplication::instance()->findChild<QColorDialogSlots*>();

    if( s == NULL )
    {
      s = new QColorDialogSlots();
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
