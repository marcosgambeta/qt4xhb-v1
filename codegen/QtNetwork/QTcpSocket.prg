%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractSocket

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTcpSocket ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

#pragma ENDDUMP
