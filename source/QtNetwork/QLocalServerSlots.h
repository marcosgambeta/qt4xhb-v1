/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQLOCALSERVER_H
#define SLOTSQLOCALSERVER_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QLocalServer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QLocalServer_release_codeblocks ();

class SlotsQLocalServer: public QObject
{
  Q_OBJECT

  public:
  SlotsQLocalServer(QObject *parent = 0);
  ~SlotsQLocalServer();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void newConnection ();
};

#endif
