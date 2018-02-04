/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSOCKETNOTIFIER_H
#define SLOTSQSOCKETNOTIFIER_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSocketNotifier>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QSocketNotifier_release_codeblocks ();

class SlotsQSocketNotifier: public QObject
{
  Q_OBJECT

  public:
  SlotsQSocketNotifier(QObject *parent = 0);
  ~SlotsQSocketNotifier();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void activated(int socket);
};

#endif
