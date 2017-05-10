/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQNETWORKSESSION_H
#define SLOTSQNETWORKSESSION_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QNetworkSession>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QNetworkSession_release_codeblocks ();

class SlotsQNetworkSession: public QObject
{
  Q_OBJECT

  public:
  SlotsQNetworkSession(QObject *parent = 0);
  ~SlotsQNetworkSession();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void closed ();
  void error ( QNetworkSession::SessionError error );
  void newConfigurationActivated ();
  void opened ();
  void preferredConfigurationChanged ( const QNetworkConfiguration & config, bool isSeamless );
  void stateChanged ( QNetworkSession::State state );
};

#endif
