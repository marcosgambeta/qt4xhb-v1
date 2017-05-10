/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQPROGRESSDIALOG_H
#define SLOTSQPROGRESSDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QProgressDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QProgressDialog_release_codeblocks ();

class SlotsQProgressDialog: public QObject
{
  Q_OBJECT

  public:
  SlotsQProgressDialog(QObject *parent = 0);
  ~SlotsQProgressDialog();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void canceled ();
};

#endif
