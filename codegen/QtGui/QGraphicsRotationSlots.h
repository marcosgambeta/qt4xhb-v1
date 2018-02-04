/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGRAPHICSROTATION_H
#define SLOTSQGRAPHICSROTATION_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsRotation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QGraphicsRotation_release_codeblocks ();

class SlotsQGraphicsRotation: public QObject
{
  Q_OBJECT

  public:
  SlotsQGraphicsRotation(QObject *parent = 0);
  ~SlotsQGraphicsRotation();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void angleChanged ();
  void axisChanged ();
  void originChanged ();
};

#endif
