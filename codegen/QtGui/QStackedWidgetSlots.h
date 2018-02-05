%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQSTACKEDWIDGET_H
#define SLOTSQSTACKEDWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QStackedWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QStackedWidget_release_codeblocks ();

class SlotsQStackedWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQStackedWidget(QObject *parent = 0);
  ~SlotsQStackedWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentChanged ( int index );
  void widgetRemoved ( int index );
};

#endif
