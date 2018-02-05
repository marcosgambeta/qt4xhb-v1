%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQGRAPHICSOBJECT_H
#define SLOTSQGRAPHICSOBJECT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QGraphicsObject_release_codeblocks ();

class SlotsQGraphicsObject: public QObject
{
  Q_OBJECT

  public:
  SlotsQGraphicsObject(QObject *parent = 0);
  ~SlotsQGraphicsObject();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void enabledChanged ();
  void opacityChanged ();
  void parentChanged ();
  void rotationChanged ();
  void scaleChanged ();
  void visibleChanged ();
  void xChanged ();
  void yChanged ();
  void zChanged ();
};

#endif
