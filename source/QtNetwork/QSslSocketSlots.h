/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSSLSOCKET_H
#define SLOTSQSSLSOCKET_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSslSocket>
#include <QSslError>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

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
