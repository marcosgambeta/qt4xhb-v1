%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$slot=|connected()
$slot=|disconnected()
$slot=|error( QAbstractSocket::SocketError socketError )
$slot=|hostFound()
$slot=|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
$slot=|stateChanged( QAbstractSocket::SocketState socketState )
$endSlotsClass
