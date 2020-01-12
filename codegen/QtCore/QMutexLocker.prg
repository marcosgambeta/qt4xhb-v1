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

$prototype=QMutexLocker ( QMutex * mutex )
$constructor=|new|QMutex *

$deleteMethod

$prototype=QMutex * mutex () const
$method=|QMutex *|mutex|

$prototype=void relock ()
$method=|void|relock|

$prototype=void unlock ()
$method=|void|unlock|

$extraMethods

#pragma ENDDUMP
