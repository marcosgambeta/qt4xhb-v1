%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQTCPSERVER_H
#define SLOTSQTCPSERVER_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTcpServer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QTcpServer_release_codeblocks ();

class SlotsQTcpServer: public QObject
{
  Q_OBJECT

  public:
  SlotsQTcpServer(QObject *parent = 0);
  ~SlotsQTcpServer();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void newConnection ();
};

#endif
