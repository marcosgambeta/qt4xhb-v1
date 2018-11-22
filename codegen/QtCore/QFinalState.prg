%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractState

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFinalState(QState * parent = 0)
$constructor=|new|QState *=0

$deleteMethod

#pragma ENDDUMP
