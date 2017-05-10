/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTABWIDGET_H
#define SLOTSQTABWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTabWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QTabWidget_release_codeblocks ();

class SlotsQTabWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQTabWidget(QObject *parent = 0);
  ~SlotsQTabWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentChanged ( int index );
  void tabCloseRequested ( int index );
};

#endif
