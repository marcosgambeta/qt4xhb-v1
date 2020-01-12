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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWaitCondition ()
$constructor=|new|

$deleteMethod

$prototype=void wakeAll ()
$method=|void|wakeAll|

$prototype=void wakeOne ()
$method=|void|wakeOne|

$extraMethods

#pragma ENDDUMP
