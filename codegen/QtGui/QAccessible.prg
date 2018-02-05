%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessible

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD isActive
   METHOD queryAccessibleInterface
   METHOD setRootObject
   METHOD updateAccessibility

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAccessible>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=static bool isActive ()
$staticMethod=|bool|isActive|

$prototype=static QAccessibleInterface * queryAccessibleInterface ( QObject * object )
$staticMethod=|QAccessibleInterface *|queryAccessibleInterface|QObject *

$prototype=static void setRootObject ( QObject * object )
$staticMethod=|void|setRootObject|QObject *

$prototype=static void updateAccessibility ( QObject * object, int child, Event reason )
$staticMethod=|void|updateAccessibility|QObject *,int,QAccessible::Event

$extraMethods

#pragma ENDDUMP
