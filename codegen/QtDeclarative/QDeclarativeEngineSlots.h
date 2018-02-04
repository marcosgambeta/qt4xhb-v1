/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDECLARATIVEENGINE_H
#define SLOTSQDECLARATIVEENGINE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDeclarativeEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDeclarativeEngine_release_codeblocks ();

class SlotsQDeclarativeEngine: public QObject
{
  Q_OBJECT

  public:
  SlotsQDeclarativeEngine(QObject *parent = 0);
  ~SlotsQDeclarativeEngine();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void quit ();
  void warnings ( const QList<QDeclarativeError> & warnings );
};

#endif
