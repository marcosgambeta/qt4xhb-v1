/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QNETWORKREPLYSLOTS_H
#define QNETWORKREPLYSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QNetworkReply>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

#include <QSslError>

class QNetworkReplySlots: public QObject
{
  Q_OBJECT
  public:
  QNetworkReplySlots(QObject * parent = 0);
  ~QNetworkReplySlots();
  public slots:
  void downloadProgress( qint64 bytesReceived, qint64 bytesTotal );
  void error( QNetworkReply::NetworkError code );
  void finished();
  void metaDataChanged();
  void sslErrors( const QList<QSslError> & errors );
  void uploadProgress( qint64 bytesSent, qint64 bytesTotal );
};

#endif /* QNETWORKREPLYSLOTS_H */
