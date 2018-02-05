%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQAXSCRIPTMANAGER_H
#define SLOTSQAXSCRIPTMANAGER_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAxScriptManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAxScriptManager_release_codeblocks ();

class SlotsQAxScriptManager: public QObject
{
  Q_OBJECT

  public:
  SlotsQAxScriptManager(QObject *parent = 0);
  ~SlotsQAxScriptManager();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void error ( QAxScript * script, int code, const QString & description, int sourcePosition, const QString & sourceText );
};

#endif
