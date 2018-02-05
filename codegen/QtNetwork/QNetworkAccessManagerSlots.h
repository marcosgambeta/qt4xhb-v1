%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QNetworkAccessManager>
#include <QSslError>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

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
