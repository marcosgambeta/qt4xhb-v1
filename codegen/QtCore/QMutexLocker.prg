%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD mutex
   METHOD relock
   METHOD unlock

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
