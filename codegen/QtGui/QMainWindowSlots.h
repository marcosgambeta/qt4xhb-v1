%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQMAINWINDOW_H
#define SLOTSQMAINWINDOW_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMainWindow>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QMainWindow_release_codeblocks ();

class SlotsQMainWindow: public QObject
{
  Q_OBJECT

  public:
  SlotsQMainWindow(QObject *parent = 0);
  ~SlotsQMainWindow();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void iconSizeChanged ( const QSize & iconSize );
  void toolButtonStyleChanged ( Qt::ToolButtonStyle toolButtonStyle );
};

#endif
