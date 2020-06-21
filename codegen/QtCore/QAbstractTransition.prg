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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStateMachine>
#include <QtCore/QState>
#include <QtCore/QAbstractState>

$deleteMethod

$prototypeV2=void addAnimation( QAbstractAnimation * animation )

$prototypeV2=QList<QAbstractAnimation *> animations() const

$prototypeV2=QStateMachine * machine() const

$prototypeV2=void removeAnimation( QAbstractAnimation * animation )

$prototypeV2=void setTargetState( QAbstractState * target )

$prototypeV2=void setTargetStates( const QList<QAbstractState *> & targets )

$prototypeV2=QState * sourceState() const

$prototypeV2=QAbstractState * targetState() const

$prototypeV2=QList<QAbstractState *> targetStates() const

$beginSignals
$signal=|triggered()
$endSignals

#pragma ENDDUMP
