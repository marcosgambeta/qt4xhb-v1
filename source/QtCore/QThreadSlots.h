/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQTHREAD_H
#define SLOTSQTHREAD_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QThread>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QThread_release_codeblocks ();

class SlotsQThread: public QObject
{
  Q_OBJECT

  public:
  SlotsQThread(QObject *parent = 0);
  ~SlotsQThread();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void finished();
  void started();
};

#endif
