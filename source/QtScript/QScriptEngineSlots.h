/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSCRIPTENGINE_H
#define SLOTSQSCRIPTENGINE_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QScriptEngine>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QScriptEngine_release_codeblocks ();
class SlotsQScriptEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQScriptEngine(QObject *parent = 0);
  ~SlotsQScriptEngine();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void signalHandlerException ( const QScriptValue & exception );
};
#endif
