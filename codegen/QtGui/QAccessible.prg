%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=static bool isActive()

$prototype=static QAccessibleInterface * queryAccessibleInterface ( QObject * object )
$staticMethod=|QAccessibleInterface *|queryAccessibleInterface|QObject *

$prototype=static void setRootObject ( QObject * object )
$staticMethod=|void|setRootObject|QObject *

$prototype=static void updateAccessibility ( QObject * object, int child, Event reason )
$staticMethod=|void|updateAccessibility|QObject *,int,QAccessible::Event

$extraMethods

#pragma ENDDUMP
