//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QSvgRendererSlots.hpp"

QSvgRendererSlots::QSvgRendererSlots(QObject *parent) : QObject(parent)
{
}

QSvgRendererSlots::~QSvgRendererSlots()
{
}

void QSvgRendererSlots::repaintNeeded()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "repaintNeeded()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSVGRENDERER");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QSvgRendererSlots_connect_signal(const QString &signal, const QString &slot)
{
  QSvgRenderer *obj = qobject_cast<QSvgRenderer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QSvgRendererSlots *s = QCoreApplication::instance()->findChild<QSvgRendererSlots *>();

    if (s == NULL)
    {
      s = new QSvgRendererSlots();
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
