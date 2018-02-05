%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQGRAPHICSWIDGET_H
#define SLOTSQGRAPHICSWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QGraphicsWidget_release_codeblocks ();

class SlotsQGraphicsWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQGraphicsWidget(QObject *parent = 0);
  ~SlotsQGraphicsWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void geometryChanged ();
};

#endif
