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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QNetworkConfiguration>
#include <QtNetwork/QNetworkProxy>
#include <QtNetwork/QAbstractNetworkCache>
#include <QtNetwork/QNetworkCookieJar>
#include <QtNetwork/QNetworkReply>

$prototype=QNetworkAccessManager ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=QNetworkConfiguration activeConfiguration() const

$prototypeV2=QAbstractNetworkCache * cache() const

$prototypeV2=QNetworkConfiguration configuration() const

$prototypeV2=QNetworkCookieJar * cookieJar() const

$prototypeV2=QNetworkReply * deleteResource( const QNetworkRequest & request )

$prototypeV2=QNetworkReply * get( const QNetworkRequest & request )

$prototypeV2=QNetworkReply * head( const QNetworkRequest & request )

$prototypeV2=QNetworkAccessManager::NetworkAccessibility networkAccessible() const

$prototype=QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
$internalMethod=|QNetworkReply *|post,post1|const QNetworkRequest &,QIODevice *

$prototype=QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )
$internalMethod=|QNetworkReply *|post,post2|const QNetworkRequest &,const QByteArray &

/*
[1]QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
[2]QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )
*/

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    QNetworkAccessManager_post1();
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    QNetworkAccessManager_post2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=post

$prototypeV2=QNetworkProxy proxy() const

$prototypeV2=QNetworkProxyFactory * proxyFactory() const

$prototype=QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
$internalMethod=|QNetworkReply *|put,put1|const QNetworkRequest &,QIODevice *

$prototype=QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )
$internalMethod=|QNetworkReply *|put,put2|const QNetworkRequest &,const QByteArray &

/*
[1]QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
[2]QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )
*/

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    QNetworkAccessManager_put1();
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    QNetworkAccessManager_put2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=put

$prototypeV2=QNetworkReply * sendCustomRequest( const QNetworkRequest & request, const QByteArray & verb, QIODevice * data = 0 )

$prototypeV2=void setCache( QAbstractNetworkCache * cache )

$prototypeV2=void setConfiguration( const QNetworkConfiguration & config )

$prototypeV2=void setCookieJar( QNetworkCookieJar * cookieJar )

$prototypeV2=void setNetworkAccessible( QNetworkAccessManager::NetworkAccessibility accessible )

$prototypeV2=void setProxy( const QNetworkProxy & proxy )

$prototypeV2=void setProxyFactory( QNetworkProxyFactory * factory )

$beginSignals
$signal=|authenticationRequired(QNetworkReply*,QAuthenticator*)
$signal=|finished(QNetworkReply*)
$signal=|networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)
$signal=|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)
$signal=|sslErrors(QNetworkReply*,QList<QSslError>)
$endSignals

#pragma ENDDUMP
