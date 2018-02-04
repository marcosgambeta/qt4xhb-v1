/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDOUBLESPINBOX_H
#define SLOTSQDOUBLESPINBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDoubleSpinBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDoubleSpinBox_release_codeblocks ();

class SlotsQDoubleSpinBox: public QObject
{
  Q_OBJECT

  public:
  SlotsQDoubleSpinBox(QObject *parent = 0);
  ~SlotsQDoubleSpinBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void valueChanged ( double d );
  void valueChanged ( const QString & text );
};

#endif
