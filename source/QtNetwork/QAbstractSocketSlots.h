/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTSOCKET_H
#define SLOTSQABSTRACTSOCKET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAbstractSocket_release_codeblocks ();

class SlotsQAbstractSocket: public QObject
{
  Q_OBJECT

  public:
  SlotsQAbstractSocket(QObject *parent = 0);
  ~SlotsQAbstractSocket();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void connected ();
  void disconnected ();
  void error ( QAbstractSocket::SocketError socketError );
  void hostFound ();
  void proxyAuthenticationRequired ( const QNetworkProxy & proxy, QAuthenticator * authenticator );
  void stateChanged ( QAbstractSocket::SocketState socketState );
};

#endif
