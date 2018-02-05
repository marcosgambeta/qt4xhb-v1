%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQPRINTPREVIEWDIALOG_H
#define SLOTSQPRINTPREVIEWDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QPrintPreviewDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QPrintPreviewDialog_release_codeblocks ();

class SlotsQPrintPreviewDialog: public QObject
{
  Q_OBJECT

  public:
  SlotsQPrintPreviewDialog(QObject *parent = 0);
  ~SlotsQPrintPreviewDialog();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void paintRequested ( QPrinter * printer );
};

#endif
