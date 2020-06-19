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

$prototype=void addAnimation ( QAbstractAnimation * animation )
$method=|void|addAnimation|QAbstractAnimation *

$prototypeV2=QList<QAbstractAnimation *> animations() const

$prototypeV2=QStateMachine * machine() const

$prototype=void removeAnimation ( QAbstractAnimation * animation )
$method=|void|removeAnimation|QAbstractAnimation *

$prototype=void setTargetState ( QAbstractState * target )
$method=|void|setTargetState|QAbstractState *

$prototype=void setTargetStates ( const QList<QAbstractState *> & targets )
$method=|void|setTargetStates|const QList<QAbstractState *> &

$prototypeV2=QState * sourceState() const

$prototypeV2=QAbstractState * targetState() const

$prototypeV2=QList<QAbstractState *> targetStates() const

$beginSignals
$signal=|triggered()
$endSignals

#pragma ENDDUMP
