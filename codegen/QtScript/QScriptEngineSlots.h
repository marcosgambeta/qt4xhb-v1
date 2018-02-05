%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QScriptEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

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
