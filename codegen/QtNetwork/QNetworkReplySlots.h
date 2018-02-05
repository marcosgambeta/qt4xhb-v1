%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQNETWORKREPLY_H
#define SLOTSQNETWORKREPLY_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QNetworkReply>
#include <QSslError>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QNetworkReply_release_codeblocks ();

class SlotsQNetworkReply: public QObject
{
  Q_OBJECT

  public:
  SlotsQNetworkReply(QObject *parent = 0);
  ~SlotsQNetworkReply();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void downloadProgress ( qint64 bytesReceived, qint64 bytesTotal );
  void error ( QNetworkReply::NetworkError code );
  void finished ();
  void metaDataChanged ();
  void sslErrors ( const QList<QSslError> & errors );
  void uploadProgress ( qint64 bytesSent, qint64 bytesTotal );
};

#endif
