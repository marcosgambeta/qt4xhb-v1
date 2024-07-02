/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QDeclarativeEngineSlots.hpp"

QDeclarativeEngineSlots::QDeclarativeEngineSlots(QObject *parent) : QObject(parent)
{
}

QDeclarativeEngineSlots::~QDeclarativeEngineSlots()
{
}

void QDeclarativeEngineSlots::quit()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "quit()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDECLARATIVEENGINE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QDeclarativeEngineSlots::warnings(const QList<QDeclarativeError> &warnings)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "warnings(QList<QDeclarativeError>)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDECLARATIVEENGINE");
    PHB_DYNS pDynSym = hb_dynsymFindName("QDECLARATIVEERROR");
    PHB_ITEM pWarnings = hb_itemArrayNew(0);
    if (pDynSym != NULL)
    {
      const int count = warnings.count();
      for (int i = 0; i < count; i++)
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew(NULL);
        hb_itemCopy(pTempObject, hb_stackReturnItem());
        PHB_ITEM pTempItem = hb_itemPutPtr(NULL, new QDeclarativeError(warnings[i]));
        hb_objSendMsg(pTempObject, "_POINTER", 1, pTempItem);
        hb_arrayAddForward(pWarnings, pTempObject);
        hb_itemRelease(pTempObject);
        hb_itemRelease(pTempItem);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QDECLARATIVEERROR", HB_ERR_ARGS_BASEPARAMS);
    }

    hb_vmEvalBlockV(cb, 2, pSender, pWarnings);

    hb_itemRelease(pSender);
    hb_itemRelease(pWarnings);
  }
}

void QDeclarativeEngineSlots_connect_signal(const QString &signal, const QString &slot)
{
  QDeclarativeEngine *obj = qobject_cast<QDeclarativeEngine *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QDeclarativeEngineSlots *s = QCoreApplication::instance()->findChild<QDeclarativeEngineSlots *>();

    if (s == NULL)
    {
      s = new QDeclarativeEngineSlots();
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
