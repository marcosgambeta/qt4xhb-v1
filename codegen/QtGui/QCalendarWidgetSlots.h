/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQCALENDARWIDGET_H
#define SLOTSQCALENDARWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QCalendarWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QCalendarWidget_release_codeblocks ();

class SlotsQCalendarWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQCalendarWidget(QObject *parent = 0);
  ~SlotsQCalendarWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void activated ( const QDate & date );
  void clicked ( const QDate & date );
  void currentPageChanged ( int year, int month );
  void selectionChanged ();
};

#endif
