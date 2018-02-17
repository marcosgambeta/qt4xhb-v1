%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QWaitCondition

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD wakeAll
   METHOD wakeOne

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

$prototype=QWaitCondition ()
$constructor=|new|

$deleteMethod

$prototype=void wakeAll ()
$method=|void|wakeAll|

$prototype=void wakeOne ()
$method=|void|wakeOne|

$extraMethods

#pragma ENDDUMP
