%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

#include <QSslError>

$beginSlotsClass
$signal=|authenticationRequired( QNetworkReply * reply, QAuthenticator * authenticator )
$signal=|finished( QNetworkReply * reply )
$signal=|networkAccessibleChanged( QNetworkAccessManager::NetworkAccessibility accessible )
$signal=|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
$signal=|sslErrors( QNetworkReply * reply, const QList<QSslError> & errors )
$endSlotsClass
