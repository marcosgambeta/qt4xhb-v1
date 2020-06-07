%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QState

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStateMachine ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void addDefaultAnimation ( QAbstractAnimation * animation )
$method=|void|addDefaultAnimation|QAbstractAnimation *

$prototype=void addState ( QAbstractState * state )
$method=|void|addState|QAbstractState *

$prototype=bool cancelDelayedEvent ( int id )
$method=|bool|cancelDelayedEvent|int

$prototype=void clearError ()
$method=|void|clearError|

$prototype=QList<QAbstractAnimation *> defaultAnimations () const
$method=|QList<QAbstractAnimation *>|defaultAnimations|

$prototype=Error error () const
$method=|QStateMachine::Error|error|

$prototypeV2=QString errorString() const

$prototype=QStateMachine::RestorePolicy globalRestorePolicy () const
$method=|QStateMachine::RestorePolicy|globalRestorePolicy|

$prototypeV2=bool isAnimated() const

$prototypeV2=bool isRunning() const

$prototype=int postDelayedEvent ( QEvent * event, int delay )
$method=|int|postDelayedEvent|QEvent *,int

$prototype=void postEvent ( QEvent * event, EventPriority priority = NormalPriority )
$method=|void|postEvent|QEvent *,QStateMachine::EventPriority=QStateMachine::NormalPriority

$prototype=void removeDefaultAnimation ( QAbstractAnimation * animation )
$method=|void|removeDefaultAnimation|QAbstractAnimation *

$prototype=void removeState ( QAbstractState * state )
$method=|void|removeState|QAbstractState *

$prototype=void setAnimated ( bool enabled )
$method=|void|setAnimated|bool

$prototype=void setGlobalRestorePolicy ( QStateMachine::RestorePolicy restorePolicy )
$method=|void|setGlobalRestorePolicy|QStateMachine::RestorePolicy

$prototype=virtual bool eventFilter ( QObject * watched, QEvent * event )
$virtualMethod=|bool|eventFilter|QObject *,QEvent *

$prototype=void start ()
$method=|void|start|

$prototype=void stop ()
$method=|void|stop|

$beginSignals
$signal=|started()
$signal=|stopped()
$endSignals

#pragma ENDDUMP
