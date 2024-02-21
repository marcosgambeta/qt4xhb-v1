/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpSearchEngineSlots.hpp"

QHelpSearchEngineSlots::QHelpSearchEngineSlots(QObject *parent) : QObject(parent)
{
}

QHelpSearchEngineSlots::~QHelpSearchEngineSlots()
{
}

void QHelpSearchEngineSlots::indexingFinished()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "indexingFinished()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHELPSEARCHENGINE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QHelpSearchEngineSlots::indexingStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "indexingStarted()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHELPSEARCHENGINE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QHelpSearchEngineSlots::searchingFinished(int hits)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "searchingFinished(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHELPSEARCHENGINE");
    PHB_ITEM pHits = hb_itemPutNI(NULL, hits);

    hb_vmEvalBlockV(cb, 2, pSender, pHits);

    hb_itemRelease(pSender);
    hb_itemRelease(pHits);
  }
}

void QHelpSearchEngineSlots::searchingStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "searchingStarted()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHELPSEARCHENGINE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QHelpSearchEngineSlots_connect_signal(const QString &signal, const QString &slot)
{
  QHelpSearchEngine *obj = qobject_cast<QHelpSearchEngine *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QHelpSearchEngineSlots *s = QCoreApplication::instance()->findChild<QHelpSearchEngineSlots *>();

    if (s == NULL)
    {
      s = new QHelpSearchEngineSlots();
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
