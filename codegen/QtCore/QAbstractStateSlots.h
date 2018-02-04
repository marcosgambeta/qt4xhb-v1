/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQABSTRACTSTATE_H
#define SLOTSQABSTRACTSTATE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAbstractState_release_codeblocks ();

class SlotsQAbstractState: public QObject
{
  Q_OBJECT

  public:
  SlotsQAbstractState(QObject *parent = 0);
  ~SlotsQAbstractState();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void entered ();
  void exited ();
};

#endif
