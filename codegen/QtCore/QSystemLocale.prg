%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLOCALE
REQUEST QVARIANT
#endif

CLASS QSystemLocale

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD fallbackLocale
   METHOD query

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

$prototype=QSystemLocale ()
$constructor=|new|

$prototype=virtual QLocale fallbackLocale () const
$virtualMethod=|QLocale|fallbackLocale|

$prototype=virtual QVariant query ( QueryType type, QVariant in ) const
$virtualMethod=|QVariant|query|QSystemLocale::QueryType,QVariant

$extraMethods

#pragma ENDDUMP
