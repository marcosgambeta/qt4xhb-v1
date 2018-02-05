%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQSSLSOCKET_H
#define SLOTSQSSLSOCKET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSslSocket>
#include <QSslError>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QSslSocket_release_codeblocks ();

class SlotsQSslSocket: public QObject
{
  Q_OBJECT

  public:
  SlotsQSslSocket(QObject *parent = 0);
  ~SlotsQSslSocket();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void encrypted ();
  void encryptedBytesWritten ( qint64 written );
  void modeChanged ( QSslSocket::SslMode mode );
  void peerVerifyError ( const QSslError & error );
  void sslErrors ( const QList<QSslError> & errors );
};

#endif
