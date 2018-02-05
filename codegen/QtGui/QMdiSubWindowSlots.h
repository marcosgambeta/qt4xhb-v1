%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQMDISUBWINDOW_H
#define SLOTSQMDISUBWINDOW_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMdiSubWindow>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QMdiSubWindow_release_codeblocks ();

class SlotsQMdiSubWindow: public QObject
{
  Q_OBJECT

  public:
  SlotsQMdiSubWindow(QObject *parent = 0);
  ~SlotsQMdiSubWindow();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void aboutToActivate ();
  void windowStateChanged ( Qt::WindowStates oldState, Qt::WindowStates newState );
};

#endif
