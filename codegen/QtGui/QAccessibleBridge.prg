%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAccessibleBridge

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD notifyAccessibilityUpdate
   METHOD setRootObject

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAccessibleBridge>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual void notifyAccessibilityUpdate ( int reason, QAccessibleInterface * interface, int child ) = 0
$virtualMethod=|void|notifyAccessibilityUpdate|int,QAccessibleInterface *,int

$prototype=virtual void setRootObject ( QAccessibleInterface * object ) = 0
$virtualMethod=|void|setRootObject|QAccessibleInterface *

$extraMethods

#pragma ENDDUMP
