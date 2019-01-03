%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$signal=|connected()
$signal=|disconnected()
$signal=|error( QAbstractSocket::SocketError socketError )
$signal=|hostFound()
$signal=|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
$signal=|stateChanged( QAbstractSocket::SocketState socketState )
$endSlotsClass
