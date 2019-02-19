%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$deleteMethod

$prototype=QStateMachine * machine () const
$method=|QStateMachine *|machine|

$prototype=QState * parentState () const
$method=|QState *|parentState|

$beginSignals
$signal=|entered()
$signal=|exited()
$endSignals

#pragma ENDDUMP
