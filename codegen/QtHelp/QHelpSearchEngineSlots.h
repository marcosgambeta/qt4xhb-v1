%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQHELPSEARCHENGINE_H
#define SLOTSQHELPSEARCHENGINE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QHelpSearchEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QHelpSearchEngine_release_codeblocks ();

class SlotsQHelpSearchEngine: public QObject
{
  Q_OBJECT

  public:
  SlotsQHelpSearchEngine(QObject *parent = 0);
  ~SlotsQHelpSearchEngine();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void indexingFinished ();
  void indexingStarted ();
  void searchingFinished ( int hits );
  void searchingStarted ();
};

#endif
