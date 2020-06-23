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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkCookieJar ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=virtual QList<QNetworkCookie> cookiesForUrl( const QUrl & url ) const

$prototypeV2=virtual bool setCookiesFromUrl( const QList<QNetworkCookie> & cookieList, const QUrl & url )

#pragma ENDDUMP
