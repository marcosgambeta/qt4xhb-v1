//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QMenuSlots.hpp"

QMenuSlots::QMenuSlots(QObject *parent) : QObject(parent)
{
}

QMenuSlots::~QMenuSlots()
{
}

void QMenuSlots::aboutToHide()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "aboutToHide()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QMENU");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QMenuSlots::aboutToShow()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "aboutToShow()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QMENU");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QMenuSlots::hovered(QAction *action)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "hovered(QAction*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QMENU");
    PHB_ITEM pAction = Qt4xHb::Signals_return_qobject(action, "QACTION");

    hb_vmEvalBlockV(cb, 2, pSender, pAction);

    hb_itemRelease(pSender);
    hb_itemRelease(pAction);
  }
}

void QMenuSlots::triggered(QAction *action)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "triggered(QAction*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QMENU");
    PHB_ITEM pAction = Qt4xHb::Signals_return_qobject(action, "QACTION");

    hb_vmEvalBlockV(cb, 2, pSender, pAction);

    hb_itemRelease(pSender);
    hb_itemRelease(pAction);
  }
}

void QMenuSlots_connect_signal(const QString &signal, const QString &slot)
{
  QMenu *obj = qobject_cast<QMenu *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QMenuSlots *s = QCoreApplication::instance()->findChild<QMenuSlots *>();

    if (s == NULL)
    {
      s = new QMenuSlots();
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
