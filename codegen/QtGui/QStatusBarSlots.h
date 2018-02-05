%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQSTATUSBAR_H
#define SLOTSQSTATUSBAR_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QStatusBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QStatusBar_release_codeblocks ();

class SlotsQStatusBar: public QObject
{
  Q_OBJECT

  public:
  SlotsQStatusBar(QObject *parent = 0);
  ~SlotsQStatusBar();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void messageChanged ( const QString & message );
};

#endif
