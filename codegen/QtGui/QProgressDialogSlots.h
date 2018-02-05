%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

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
