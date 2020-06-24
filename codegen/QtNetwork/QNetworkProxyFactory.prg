%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

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

$prototypeV2=virtual QList<QNetworkProxy> queryProxy( const QNetworkProxyQuery & query = QNetworkProxyQuery() ) = 0

$prototypeV2=static QList<QNetworkProxy> proxyForQuery( const QNetworkProxyQuery & query )

$prototypeV2=static void setApplicationProxyFactory( QNetworkProxyFactory * factory )

$prototypeV2=static void setUseSystemConfiguration( bool enable )

$prototypeV2=static QList<QNetworkProxy> systemProxyForQuery( const QNetworkProxyQuery & query = QNetworkProxyQuery() )

$extraMethods

#pragma ENDDUMP
