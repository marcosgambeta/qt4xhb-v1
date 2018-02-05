%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQABSTRACTBUTTON_H
#define SLOTSQABSTRACTBUTTON_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractButton>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAbstractButton_release_codeblocks ();

class SlotsQAbstractButton: public QObject
{
  Q_OBJECT

  public:
  SlotsQAbstractButton(QObject *parent = 0);
  ~SlotsQAbstractButton();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void clicked ( bool checked = false );
  void pressed ();
  void released ();
  void toggled ( bool checked );
};

#endif
