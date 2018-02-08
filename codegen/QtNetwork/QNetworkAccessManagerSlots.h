%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

#include <QSslError>

$beginSlotsClass
$signal=|void authenticationRequired( QNetworkReply * reply, QAuthenticator * authenticator );
$signal=|void finished( QNetworkReply * reply );
$signal=|void networkAccessibleChanged( QNetworkAccessManager::NetworkAccessibility accessible );
$signal=|void proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator );
$signal=|void sslErrors( QNetworkReply * reply, const QList<QSslError> & errors );
$endSlotsClass
