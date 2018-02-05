%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQMESSAGEBOX_H
#define SLOTSQMESSAGEBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMessageBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QMessageBox_release_codeblocks ();

class SlotsQMessageBox: public QObject
{
  Q_OBJECT

  public:
  SlotsQMessageBox(QObject *parent = 0);
  ~SlotsQMessageBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void buttonClicked ( QAbstractButton * button );
};

#endif
