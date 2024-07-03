//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QDesktopWidgetSlots.hpp"

QDesktopWidgetSlots::QDesktopWidgetSlots(QObject *parent) : QObject(parent)
{
}

QDesktopWidgetSlots::~QDesktopWidgetSlots()
{
}

void QDesktopWidgetSlots::resized(int screen)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "resized(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDESKTOPWIDGET");
    PHB_ITEM pScreen = hb_itemPutNI(NULL, screen);

    hb_vmEvalBlockV(cb, 2, pSender, pScreen);

    hb_itemRelease(pSender);
    hb_itemRelease(pScreen);
  }
}

void QDesktopWidgetSlots::screenCountChanged(int newCount)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "screenCountChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDESKTOPWIDGET");
    PHB_ITEM pNewCount = hb_itemPutNI(NULL, newCount);

    hb_vmEvalBlockV(cb, 2, pSender, pNewCount);

    hb_itemRelease(pSender);
    hb_itemRelease(pNewCount);
  }
}

void QDesktopWidgetSlots::workAreaResized(int screen)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "workAreaResized(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDESKTOPWIDGET");
    PHB_ITEM pScreen = hb_itemPutNI(NULL, screen);

    hb_vmEvalBlockV(cb, 2, pSender, pScreen);

    hb_itemRelease(pSender);
    hb_itemRelease(pScreen);
  }
}

void QDesktopWidgetSlots_connect_signal(const QString &signal, const QString &slot)
{
  QDesktopWidget *obj = qobject_cast<QDesktopWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QDesktopWidgetSlots *s = QCoreApplication::instance()->findChild<QDesktopWidgetSlots *>();

    if (s == NULL)
    {
      s = new QDesktopWidgetSlots();
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
