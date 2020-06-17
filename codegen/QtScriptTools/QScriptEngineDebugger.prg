%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtScriptTools

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QAction>
#include <QtGui/QMenu>
#include <QtGui/QToolBar>
#include <QtGui/QMainWindow>

$prototype=QScriptEngineDebugger ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QAction * action ( DebuggerAction action ) const
$method=|QAction *|action|QScriptEngineDebugger::DebuggerAction

$prototype=void attachTo ( QScriptEngine * engine )
$method=|void|attachTo|QScriptEngine *

$prototypeV2=bool autoShowStandardWindow() const

$prototype=QMenu * createStandardMenu ( QWidget * parent = 0 )
$method=|QMenu *|createStandardMenu|QWidget *=0

$prototype=QToolBar * createStandardToolBar ( QWidget * parent = 0 )
$method=|QToolBar *|createStandardToolBar|QWidget *=0

$prototypeV2=void detach()

$prototype=void setAutoShowStandardWindow ( bool autoShow )
$method=|void|setAutoShowStandardWindow|bool

$prototypeV2=QMainWindow * standardWindow() const

$prototypeV2=QScriptEngineDebugger::DebuggerState state() const

$prototype=QWidget * widget ( DebuggerWidget widget ) const
$method=|QWidget *|widget|QScriptEngineDebugger::DebuggerWidget

$beginSignals
$signal=|evaluationResumed()
$signal=|evaluationSuspended()
$endSignals

#pragma ENDDUMP
