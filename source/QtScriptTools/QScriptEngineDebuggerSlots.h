/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSCRIPTENGINEDEBUGGER_H
#define SLOTSQSCRIPTENGINEDEBUGGER_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QScriptEngineDebugger>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QScriptEngineDebugger_release_codeblocks ();

class SlotsQScriptEngineDebugger: public QObject
{
  Q_OBJECT

  public:
  SlotsQScriptEngineDebugger(QObject *parent = 0);
  ~SlotsQScriptEngineDebugger();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void evaluationResumed ();
  void evaluationSuspended ();
};

#endif
