/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWIDGET_H
#define SLOTSQWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QWidget_release_codeblocks ();

class SlotsQWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQWidget(QObject *parent = 0);
  ~SlotsQWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void customContextMenuRequested ( const QPoint & pos );
};

#endif
