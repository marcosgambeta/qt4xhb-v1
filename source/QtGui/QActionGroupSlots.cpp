//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QActionGroupSlots.hpp"

QActionGroupSlots::QActionGroupSlots(QObject *parent) : QObject(parent)
{
}

QActionGroupSlots::~QActionGroupSlots()
{
}

void QActionGroupSlots::hovered(QAction *action)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "hovered(QAction*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QACTIONGROUP");
    PHB_ITEM pAction = Qt4xHb::Signals_return_qobject(action, "QACTION");

    hb_vmEvalBlockV(cb, 2, pSender, pAction);

    hb_itemRelease(pSender);
    hb_itemRelease(pAction);
  }
}

void QActionGroupSlots::triggered(QAction *action)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "triggered(QAction*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QACTIONGROUP");
    PHB_ITEM pAction = Qt4xHb::Signals_return_qobject(action, "QACTION");

    hb_vmEvalBlockV(cb, 2, pSender, pAction);

    hb_itemRelease(pSender);
    hb_itemRelease(pAction);
  }
}

void QActionGroupSlots_connect_signal(const QString &signal, const QString &slot)
{
  QActionGroup *obj = qobject_cast<QActionGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QActionGroupSlots *s = QCoreApplication::instance()->findChild<QActionGroupSlots *>();

    if (s == NULL)
    {
      s = new QActionGroupSlots();
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
