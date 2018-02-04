/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQACTIONGROUP_H
#define SLOTSQACTIONGROUP_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QActionGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QActionGroup_release_codeblocks ();

class SlotsQActionGroup: public QObject
{
  Q_OBJECT

  public:
  SlotsQActionGroup(QObject *parent = 0);
  ~SlotsQActionGroup();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void hovered ( QAction * action );
  void triggered ( QAction * action );
};

#endif
