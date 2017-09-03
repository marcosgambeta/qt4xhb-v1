/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef EVENTS_H
#define EVENTS_H

#include <QObject>
#include <QEvent>
#include <QList>
#include <QCoreApplication>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"

void Events_release_codeblocks ();

class Events: public QObject
{

  public:
  Events(QObject *parent = 0);
  ~Events();
  QList<QObject*> list1;
  QList<QEvent::Type> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  protected:
  bool eventFilter(QObject *obj, QEvent *event);

};

#endif
