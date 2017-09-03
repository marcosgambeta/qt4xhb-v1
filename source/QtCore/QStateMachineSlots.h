/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSTATEMACHINE_H
#define SLOTSQSTATEMACHINE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QStateMachine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QStateMachine_release_codeblocks ();

class SlotsQStateMachine: public QObject
{
  Q_OBJECT

  public:
  SlotsQStateMachine(QObject *parent = 0);
  ~SlotsQStateMachine();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void started ();
  void stopped ();
};

#endif
