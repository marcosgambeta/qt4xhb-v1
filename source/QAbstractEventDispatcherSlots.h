/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTEVENTDISPATCHER_H
#define SLOTSQABSTRACTEVENTDISPATCHER_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractEventDispatcher>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QAbstractEventDispatcher_release_codeblocks ();
class SlotsQAbstractEventDispatcher: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractEventDispatcher(QObject *parent = 0);
  ~SlotsQAbstractEventDispatcher();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void aboutToBlock ();
  void awake ();
};
#endif
