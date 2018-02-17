%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMUTEX
#endif

CLASS QMutexLocker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD mutex
   METHOD relock
   METHOD unlock

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

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
