%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQSHORTCUT_H
#define SLOTSQSHORTCUT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QShortcut>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QShortcut_release_codeblocks ();

class SlotsQShortcut: public QObject
{
  Q_OBJECT

  public:
  SlotsQShortcut(QObject *parent = 0);
  ~SlotsQShortcut();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void activated();
  void activatedAmbiguously();
};

#endif
