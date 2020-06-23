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

$prototypeV2=static QAccessibleInterface * queryAccessibleInterface( QObject * object )

$prototypeV2=static void setRootObject( QObject * object )

$prototypeV2=static void updateAccessibility( QObject * object, int child, QAccessible::Event reason )

$extraMethods

#pragma ENDDUMP
