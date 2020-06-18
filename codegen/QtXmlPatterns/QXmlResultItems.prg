%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtXmlPatterns

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtXmlPatterns/QXmlItem>

$prototype=QXmlResultItems ()
$constructor=|new|

$deleteMethod

$prototypeV2=QXmlItem current() const

$prototypeV2=bool hasError() const

$prototypeV2=QXmlItem next()

$extraMethods

#pragma ENDDUMP
