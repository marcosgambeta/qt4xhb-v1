%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQMENUBAR_H
#define SLOTSQMENUBAR_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMenuBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QMenuBar_release_codeblocks ();

class SlotsQMenuBar: public QObject
{
  Q_OBJECT

  public:
  SlotsQMenuBar(QObject *parent = 0);
  ~SlotsQMenuBar();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void hovered ( QAction * action );
  void triggered ( QAction * action );
};

#endif
