/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQNETWORKACCESSMANAGER_H
#define SLOTSQNETWORKACCESSMANAGER_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QNetworkAccessManager>
#include <QSslError>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QNetworkAccessManager_release_codeblocks ();
class SlotsQNetworkAccessManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQNetworkAccessManager(QObject *parent = 0);
  ~SlotsQNetworkAccessManager();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void authenticationRequired ( QNetworkReply * reply, QAuthenticator * authenticator );
  void finished ( QNetworkReply * reply );
  void networkAccessibleChanged ( QNetworkAccessManager::NetworkAccessibility accessible );
  void proxyAuthenticationRequired ( const QNetworkProxy & proxy, QAuthenticator * authenticator );
  void sslErrors ( QNetworkReply * reply, const QList<QSslError> & errors );
};
#endif
