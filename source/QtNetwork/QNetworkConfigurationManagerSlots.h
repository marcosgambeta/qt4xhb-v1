/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQNETWORKCONFIGURATIONMANAGER_H
#define SLOTSQNETWORKCONFIGURATIONMANAGER_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QNetworkConfigurationManager>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QNetworkConfigurationManager_release_codeblocks ();
class SlotsQNetworkConfigurationManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQNetworkConfigurationManager(QObject *parent = 0);
  ~SlotsQNetworkConfigurationManager();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void configurationAdded ( const QNetworkConfiguration & config );
  void configurationChanged ( const QNetworkConfiguration & config );
  void configurationRemoved ( const QNetworkConfiguration & config );
  void onlineStateChanged ( bool isOnline );
  void updateCompleted ();
};
#endif
