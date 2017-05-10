/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQPRINTDIALOG_H
#define SLOTSQPRINTDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QPrintDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QPrintDialog_release_codeblocks ();

class SlotsQPrintDialog: public QObject
{
  Q_OBJECT

  public:
  SlotsQPrintDialog(QObject *parent = 0);
  ~SlotsQPrintDialog();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void accepted ( QPrinter * printer );
};

#endif
