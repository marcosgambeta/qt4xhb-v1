/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQPRINTPREVIEWWIDGET_H
#define SLOTSQPRINTPREVIEWWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QPrintPreviewWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QPrintPreviewWidget_release_codeblocks ();

class SlotsQPrintPreviewWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQPrintPreviewWidget(QObject *parent = 0);
  ~SlotsQPrintPreviewWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void paintRequested ( QPrinter * printer );
  void previewChanged ();
};

#endif
