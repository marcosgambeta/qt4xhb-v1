%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQABSTRACTTRANSITION_H
#define SLOTSQABSTRACTTRANSITION_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractTransition>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAbstractTransition_release_codeblocks ();

class SlotsQAbstractTransition: public QObject
{
  Q_OBJECT

  public:
  SlotsQAbstractTransition(QObject *parent = 0);
  ~SlotsQAbstractTransition();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void triggered ();
};

#endif
