/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGROUPBOX_H
#define SLOTSQGROUPBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGroupBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QGroupBox_release_codeblocks ();

class SlotsQGroupBox: public QObject
{
  Q_OBJECT

  public:
  SlotsQGroupBox(QObject *parent = 0);
  ~SlotsQGroupBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void clicked ( bool checked = false );
  void toggled ( bool on );
};

#endif
