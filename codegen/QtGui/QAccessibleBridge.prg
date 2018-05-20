%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD delete
   METHOD notifyAccessibilityUpdate
   METHOD setRootObject

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void notifyAccessibilityUpdate ( int reason, QAccessibleInterface * interface, int child ) = 0
$virtualMethod=|void|notifyAccessibilityUpdate|int,QAccessibleInterface *,int

$prototype=virtual void setRootObject ( QAccessibleInterface * object ) = 0
$virtualMethod=|void|setRootObject|QAccessibleInterface *

$extraMethods

#pragma ENDDUMP
