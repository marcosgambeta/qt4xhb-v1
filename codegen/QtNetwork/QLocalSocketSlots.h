%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQLOCALSOCKET_H
#define SLOTSQLOCALSOCKET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QLocalSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QLocalSocket_release_codeblocks ();

class SlotsQLocalSocket: public QObject
{
  Q_OBJECT

  public:
  SlotsQLocalSocket(QObject *parent = 0);
  ~SlotsQLocalSocket();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void connected ();
  void disconnected ();
  void error ( QLocalSocket::LocalSocketError socketError );
  void stateChanged ( QLocalSocket::LocalSocketState socketState );
};

#endif
