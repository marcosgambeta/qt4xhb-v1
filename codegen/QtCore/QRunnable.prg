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

$deleteMethod

$prototypeV2=bool autoDelete() const

$prototypeV2=virtual void run() = 0

$prototype=void setAutoDelete ( bool autoDelete )
$method=|void|setAutoDelete|bool

$extraMethods

#pragma ENDDUMP
