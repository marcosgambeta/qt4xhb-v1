%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCOOKIE
#endif

CLASS QNetworkCookieJar INHERIT QObject

   METHOD new
   METHOD delete
   METHOD cookiesForUrl
   METHOD setCookiesFromUrl

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkCookieJar ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual QList<QNetworkCookie> cookiesForUrl ( const QUrl & url ) const
$virtualMethod=|QList<QNetworkCookie>|cookiesForUrl|const QUrl &

$prototype=virtual bool setCookiesFromUrl ( const QList<QNetworkCookie> & cookieList, const QUrl & url )
$virtualMethod=|bool|setCookiesFromUrl|const QList<QNetworkCookie> &,const QUrl &

#pragma ENDDUMP
