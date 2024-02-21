/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDeclarativeExpressionSlots.hpp"

QDeclarativeExpressionSlots::QDeclarativeExpressionSlots(QObject *parent) : QObject(parent)
{
}

QDeclarativeExpressionSlots::~QDeclarativeExpressionSlots()
{
}

void QDeclarativeExpressionSlots::valueChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "valueChanged()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDECLARATIVEEXPRESSION");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QDeclarativeExpressionSlots_connect_signal(const QString &signal, const QString &slot)
{
  QDeclarativeExpression *obj = qobject_cast<QDeclarativeExpression *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QDeclarativeExpressionSlots *s = QCoreApplication::instance()->findChild<QDeclarativeExpressionSlots *>();

    if (s == NULL)
    {
      s = new QDeclarativeExpressionSlots();
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
