/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
