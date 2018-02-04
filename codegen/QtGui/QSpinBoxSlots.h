/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSPINBOX_H
#define SLOTSQSPINBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSpinBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QSpinBox_release_codeblocks ();

class SlotsQSpinBox: public QObject
{
  Q_OBJECT

  public:
  SlotsQSpinBox(QObject *parent = 0);
  ~SlotsQSpinBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void valueChanged ( int i );
  void valueChanged ( const QString & text );
};

#endif
