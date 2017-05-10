/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTIMER_H
#define SLOTSQTIMER_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTimer>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

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
