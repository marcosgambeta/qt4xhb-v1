%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$signal=|connected()
$signal=|disconnected()
$signal=|error( QLocalSocket::LocalSocketError socketError )
$signal=|stateChanged( QLocalSocket::LocalSocketState socketState )
$endSlotsClass
