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

$prototypeV2=void addDefaultAnimation( QAbstractAnimation * animation )

$prototypeV2=void addState( QAbstractState * state )

$prototypeV2=bool cancelDelayedEvent( int id )

$prototypeV2=void clearError()

$prototypeV2=QList<QAbstractAnimation *> defaultAnimations() const

$prototypeV2=QStateMachine::Error error() const

$prototypeV2=QString errorString() const

$prototypeV2=QStateMachine::RestorePolicy globalRestorePolicy() const

$prototypeV2=bool isAnimated() const

$prototypeV2=bool isRunning() const

$prototypeV2=int postDelayedEvent( QEvent * event, int delay )

$prototypeV2=void postEvent( QEvent * event, QStateMachine::EventPriority priority = QStateMachine::NormalPriority )

$prototypeV2=void removeDefaultAnimation( QAbstractAnimation * animation )

$prototypeV2=void removeState( QAbstractState * state )

$prototypeV2=void setAnimated( bool enabled )

$prototypeV2=void setGlobalRestorePolicy( QStateMachine::RestorePolicy restorePolicy )

$prototypeV2=virtual bool eventFilter( QObject * watched, QEvent * event )

$prototypeV2=void start()

$prototypeV2=void stop()

$beginSignals
$signal=|started()
$signal=|stopped()
$endSignals

#pragma ENDDUMP
