%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSystemLocale ()
$constructor=|new|

$prototypeV2=virtual QLocale fallbackLocale() const

$prototypeV2=virtual QVariant query( QSystemLocale::QueryType type, QVariant in ) const

$extraMethods

#pragma ENDDUMP
