%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATE
#endif

CLASS QLibraryInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD licensee
   METHOD licensedProducts
   METHOD buildKey
   METHOD buildDate
   METHOD location

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QLibraryInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=static QString licensee()
$staticMethod=|QString|licensee|

$prototype=static QString licensedProducts()
$staticMethod=|QString|licensedProducts|

$prototype=static QString buildKey()
$staticMethod=|QString|buildKey|

$prototype=static QDate buildDate()
$staticMethod=|QDate|buildDate|

$prototype=static QString location(LibraryLocation)
$staticMethod=|QString|location|QLibraryInfo::LibraryLocation

$extraMethods

#pragma ENDDUMP
