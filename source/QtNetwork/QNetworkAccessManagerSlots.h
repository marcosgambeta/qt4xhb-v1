/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QNETWORKACCESSMANAGERSLOTS_H
#define QNETWORKACCESSMANAGERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QNetworkAccessManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

#include <QSslError>
#include <QNetworkReply>

class QNetworkAccessManagerSlots: public QObject
{
  Q_OBJECT
  public:
  QNetworkAccessManagerSlots( QObject * parent = 0 );
  ~QNetworkAccessManagerSlots();
  public slots:
  void authenticationRequired( QNetworkReply * reply, QAuthenticator * authenticator );
  void finished( QNetworkReply * reply );
  void networkAccessibleChanged( QNetworkAccessManager::NetworkAccessibility accessible );
  void proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator );
  void sslErrors( QNetworkReply * reply, const QList<QSslError> & errors );
};

#endif /* QNETWORKACCESSMANAGERSLOTS_H */
