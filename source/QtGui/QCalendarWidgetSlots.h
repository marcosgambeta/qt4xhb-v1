/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCALENDARWIDGET_H
#define SLOTSQCALENDARWIDGET_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QCalendarWidget>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

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
