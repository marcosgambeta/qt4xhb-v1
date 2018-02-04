/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSTATE_H
#define SLOTSQSTATE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QState_release_codeblocks ();

class SlotsQState: public QObject
{
  Q_OBJECT

  public:
  SlotsQState(QObject *parent = 0);
  ~SlotsQState();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void finished ();
  void propertiesAssigned ();
};

#endif
