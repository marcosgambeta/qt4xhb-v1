/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQHELPSEARCHRESULTWIDGET_H
#define SLOTSQHELPSEARCHRESULTWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QHelpSearchResultWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QHelpSearchResultWidget_release_codeblocks ();

class SlotsQHelpSearchResultWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQHelpSearchResultWidget(QObject *parent = 0);
  ~SlotsQHelpSearchResultWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void requestShowLink ( const QUrl & link );
};

#endif
