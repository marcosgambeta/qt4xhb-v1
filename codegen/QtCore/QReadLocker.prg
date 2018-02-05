%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREADWRITELOCK
#endif

CLASS QReadLocker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD readWriteLock
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

#include <QReadLocker>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QReadLocker ( QReadWriteLock * lock )
$constructor=|new|QReadWriteLock *

$deleteMethod

$prototype=QReadWriteLock * readWriteLock () const
$method=|QReadWriteLock *|readWriteLock|

$prototype=void relock ()
$method=|void|relock|

$prototype=void unlock ()
$method=|void|unlock|

$extraMethods

#pragma ENDDUMP
