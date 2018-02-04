/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQHELPCONTENTWIDGET_H
#define SLOTSQHELPCONTENTWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QHelpContentWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QHelpContentWidget_release_codeblocks ();

class SlotsQHelpContentWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQHelpContentWidget(QObject *parent = 0);
  ~SlotsQHelpContentWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void linkActivated ( const QUrl & link );
};

#endif
