/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDESKTOPWIDGET_H
#define SLOTSQDESKTOPWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDesktopWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDesktopWidget_release_codeblocks ();

class SlotsQDesktopWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQDesktopWidget(QObject *parent = 0);
  ~SlotsQDesktopWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void resized ( int screen );
  void screenCountChanged ( int newCount );
  void workAreaResized ( int screen );
};

#endif
