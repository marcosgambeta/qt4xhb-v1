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

$prototypeV2=QAction * action( QScriptEngineDebugger::DebuggerAction action ) const

$prototypeV2=void attachTo( QScriptEngine * engine )

$prototypeV2=bool autoShowStandardWindow() const

$prototypeV2=QMenu * createStandardMenu( QWidget * parent = 0 )

$prototypeV2=QToolBar * createStandardToolBar( QWidget * parent = 0 )

$prototypeV2=void detach()

$prototypeV2=void setAutoShowStandardWindow( bool autoShow )

$prototypeV2=QMainWindow * standardWindow() const

$prototypeV2=QScriptEngineDebugger::DebuggerState state() const

$prototypeV2=QWidget * widget( QScriptEngineDebugger::DebuggerWidget widget ) const

$beginSignals
$signal=|evaluationResumed()
$signal=|evaluationSuspended()
$endSignals

#pragma ENDDUMP
