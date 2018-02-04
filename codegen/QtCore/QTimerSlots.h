/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQTIMER_H
#define SLOTSQTIMER_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTimer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QTimer_release_codeblocks ();

class SlotsQTimer: public QObject
{
  Q_OBJECT

  public:
  SlotsQTimer(QObject *parent = 0);
  ~SlotsQTimer();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void timeout ();
};

#endif
