/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQWORKSPACE_H
#define SLOTSQWORKSPACE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QWorkspace>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QWorkspace_release_codeblocks ();

class SlotsQWorkspace: public QObject
{
  Q_OBJECT

  public:
  SlotsQWorkspace(QObject *parent = 0);
  ~SlotsQWorkspace();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void windowActivated ( QWidget * w );
};

#endif
