//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QNetworkSessionSlots.hpp"

QNetworkSessionSlots::QNetworkSessionSlots(QObject *parent) : QObject(parent)
{
}

QNetworkSessionSlots::~QNetworkSessionSlots()
{
}

void QNetworkSessionSlots::closed()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "closed()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKSESSION");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QNetworkSessionSlots::error(QNetworkSession::SessionError error)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "error(QNetworkSession::SessionError)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKSESSION");
    PHB_ITEM pError = hb_itemPutNI(NULL, static_cast<int>(error));

    hb_vmEvalBlockV(cb, 2, pSender, pError);

    hb_itemRelease(pSender);
    hb_itemRelease(pError);
  }
}

void QNetworkSessionSlots::newConfigurationActivated()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "newConfigurationActivated()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKSESSION");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QNetworkSessionSlots::opened()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "opened()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKSESSION");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QNetworkSessionSlots::preferredConfigurationChanged(const QNetworkConfiguration &config, bool isSeamless)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "preferredConfigurationChanged(QNetworkConfiguration,bool)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKSESSION");
    PHB_ITEM pConfig = Qt4xHb::Signals_return_object((void *)&config, "QNETWORKCONFIGURATION");
    PHB_ITEM pIsSeamless = hb_itemPutL(NULL, isSeamless);

    hb_vmEvalBlockV(cb, 3, pSender, pConfig, pIsSeamless);

    hb_itemRelease(pSender);
    hb_itemRelease(pConfig);
    hb_itemRelease(pIsSeamless);
  }
}

void QNetworkSessionSlots::stateChanged(QNetworkSession::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "stateChanged(QNetworkSession::State)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKSESSION");
    PHB_ITEM pState = hb_itemPutNI(NULL, static_cast<int>(state));

    hb_vmEvalBlockV(cb, 2, pSender, pState);

    hb_itemRelease(pSender);
    hb_itemRelease(pState);
  }
}

void QNetworkSessionSlots_connect_signal(const QString &signal, const QString &slot)
{
  QNetworkSession *obj = qobject_cast<QNetworkSession *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QNetworkSessionSlots *s = QCoreApplication::instance()->findChild<QNetworkSessionSlots *>();

    if (s == NULL)
    {
      s = new QNetworkSessionSlots();
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
