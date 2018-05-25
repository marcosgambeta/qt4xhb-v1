%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD socket
   METHOD type
   METHOD isEnabled
   METHOD setEnabled

   METHOD onActivated

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSocketNotifier(int socket, Type, QObject *parent = 0)
$constructor=|new|int,QSocketNotifier::Type,QObject *=0

$deleteMethod

$prototype=int socket() const
$method=|int|socket|

$prototype=Type type() const
$method=|QSocketNotifier::Type|type|

$prototype=bool isEnabled() const
$method=|bool|isEnabled|

$prototype=void setEnabled(bool)
$method=|void|setEnabled|bool

$beginSignals
$signal=|activated(int)
$endSignals

#pragma ENDDUMP
