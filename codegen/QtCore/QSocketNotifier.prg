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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSocketNotifier(int socket, Type, QObject *parent = 0)
$constructor=|new|int,QSocketNotifier::Type,QObject *=0

$deleteMethod

$prototypeV2=int socket() const

$prototype=Type type() const
$method=|QSocketNotifier::Type|type|

$prototypeV2=bool isEnabled() const

$prototype=void setEnabled(bool)
$method=|void|setEnabled|bool

$beginSignals
$signal=|activated(int)
$endSignals

#pragma ENDDUMP
