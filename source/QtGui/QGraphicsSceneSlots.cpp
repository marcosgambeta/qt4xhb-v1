//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QGraphicsSceneSlots.hpp"

QGraphicsSceneSlots::QGraphicsSceneSlots(QObject *parent) : QObject(parent)
{
}

QGraphicsSceneSlots::~QGraphicsSceneSlots()
{
}

void QGraphicsSceneSlots::changed(const QList<QRectF> &region)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "changed(QList<QRectF>)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSSCENE");
    PHB_DYNS pDynSym = hb_dynsymFindName("QRECTF");
    PHB_ITEM pRegion = hb_itemArrayNew(0);
    if (pDynSym != NULL)
    {
      const int count = region.count();
      for (int i = 0; i < count; i++)
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew(NULL);
        hb_itemCopy(pTempObject, hb_stackReturnItem());
        PHB_ITEM pTempItem = hb_itemPutPtr(NULL, new QRectF(region[i]));
        hb_objSendMsg(pTempObject, "_POINTER", 1, pTempItem);
        hb_arrayAddForward(pRegion, pTempObject);
        hb_itemRelease(pTempObject);
        hb_itemRelease(pTempItem);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QRECTF", HB_ERR_ARGS_BASEPARAMS);
    }

    hb_vmEvalBlockV(cb, 2, pSender, pRegion);

    hb_itemRelease(pSender);
    hb_itemRelease(pRegion);
  }
}

void QGraphicsSceneSlots::sceneRectChanged(const QRectF &rect)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sceneRectChanged(QRectF)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSSCENE");
    PHB_ITEM pRect = Qt4xHb::Signals_return_object((void *)&rect, "QRECTF");

    hb_vmEvalBlockV(cb, 2, pSender, pRect);

    hb_itemRelease(pSender);
    hb_itemRelease(pRect);
  }
}

void QGraphicsSceneSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "selectionChanged()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSSCENE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QGraphicsSceneSlots_connect_signal(const QString &signal, const QString &slot)
{
  QGraphicsScene *obj = qobject_cast<QGraphicsScene *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QGraphicsSceneSlots *s = QCoreApplication::instance()->findChild<QGraphicsSceneSlots *>();

    if (s == NULL)
    {
      s = new QGraphicsSceneSlots();
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
