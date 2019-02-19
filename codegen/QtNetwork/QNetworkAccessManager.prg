%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QNetworkConfiguration activeConfiguration () const
$method=|QNetworkConfiguration|activeConfiguration|

$prototype=QAbstractNetworkCache * cache () const
$method=|QAbstractNetworkCache *|cache|

$prototype=QNetworkConfiguration configuration () const
$method=|QNetworkConfiguration|configuration|

$prototype=QNetworkCookieJar * cookieJar () const
$method=|QNetworkCookieJar *|cookieJar|

$prototype=QNetworkReply * deleteResource ( const QNetworkRequest & request )
$method=|QNetworkReply *|deleteResource|const QNetworkRequest &

$prototype=QNetworkReply * get ( const QNetworkRequest & request )
$method=|QNetworkReply *|get|const QNetworkRequest &

$prototype=QNetworkReply * head ( const QNetworkRequest & request )
$method=|QNetworkReply *|head|const QNetworkRequest &

$prototype=NetworkAccessibility networkAccessible () const
$method=|QNetworkAccessManager::NetworkAccessibility|networkAccessible|

$prototype=QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
$internalMethod=|QNetworkReply *|post,post1|const QNetworkRequest &,QIODevice *

$prototype=QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )
$internalMethod=|QNetworkReply *|post,post2|const QNetworkRequest &,const QByteArray &

//[1]QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
//[2]QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )

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

$prototype=QNetworkProxy proxy () const
$method=|QNetworkProxy|proxy|

$prototype=QNetworkProxyFactory * proxyFactory () const
$method=|QNetworkProxyFactory *|proxyFactory|

$prototype=QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
$internalMethod=|QNetworkReply *|put,put1|const QNetworkRequest &,QIODevice *

$prototype=QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )
$internalMethod=|QNetworkReply *|put,put2|const QNetworkRequest &,const QByteArray &

//[1]QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
//[2]QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )

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

$prototype=QNetworkReply * sendCustomRequest ( const QNetworkRequest & request, const QByteArray & verb, QIODevice * data = 0 )
$method=|QNetworkReply *|sendCustomRequest|const QNetworkRequest &,const QByteArray &,QIODevice *=0

$prototype=void setCache ( QAbstractNetworkCache * cache )
$method=|void|setCache|QAbstractNetworkCache *

$prototype=void setConfiguration ( const QNetworkConfiguration & config )
$method=|void|setConfiguration|const QNetworkConfiguration &

$prototype=void setCookieJar ( QNetworkCookieJar * cookieJar )
$method=|void|setCookieJar|QNetworkCookieJar *

$prototype=void setNetworkAccessible ( NetworkAccessibility accessible )
$method=|void|setNetworkAccessible|QNetworkAccessManager::NetworkAccessibility

$prototype=void setProxy ( const QNetworkProxy & proxy )
$method=|void|setProxy|const QNetworkProxy &

$prototype=void setProxyFactory ( QNetworkProxyFactory * factory )
$method=|void|setProxyFactory|QNetworkProxyFactory *

$beginSignals
$signal=|authenticationRequired(QNetworkReply*,QAuthenticator*)
$signal=|finished(QNetworkReply*)
$signal=|networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)
$signal=|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)
$signal=|sslErrors(QNetworkReply*,QList<QSslError>)
$endSignals

#pragma ENDDUMP
