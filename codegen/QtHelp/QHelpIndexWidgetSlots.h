/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQHELPINDEXWIDGET_H
#define SLOTSQHELPINDEXWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QHelpIndexWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QHelpIndexWidget_release_codeblocks ();

class SlotsQHelpIndexWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQHelpIndexWidget(QObject *parent = 0);
  ~SlotsQHelpIndexWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void linkActivated ( const QUrl & link, const QString & keyword );
};

#endif
