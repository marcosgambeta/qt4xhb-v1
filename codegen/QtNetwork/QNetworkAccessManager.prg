$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
REQUEST QABSTRACTNETWORKCACHE
REQUEST QNETWORKCOOKIEJAR
REQUEST QNETWORKREPLY
REQUEST QNETWORKPROXY
REQUEST QNETWORKPROXYFACTORY
#endif

CLASS QNetworkAccessManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activeConfiguration
   METHOD cache
   METHOD configuration
   METHOD cookieJar
   METHOD deleteResource
   METHOD get
   METHOD head
   METHOD networkAccessible
   METHOD post1
   METHOD post2
   METHOD post
   METHOD proxy
   METHOD proxyFactory
   METHOD put1
   METHOD put2
   METHOD put
   METHOD sendCustomRequest
   METHOD setCache
   METHOD setConfiguration
   METHOD setCookieJar
   METHOD setNetworkAccessible
   METHOD setProxy
   METHOD setProxyFactory

   METHOD onAuthenticationRequired
   METHOD onFinished
   METHOD onNetworkAccessibleChanged
   METHOD onProxyAuthenticationRequired
   METHOD onSslErrors

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkAccessManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QNetworkConfiguration>
#include <QNetworkProxy>

/*
QNetworkAccessManager ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QNetworkConfiguration activeConfiguration () const
*/
$method=|QNetworkConfiguration|activeConfiguration|

/*
QAbstractNetworkCache * cache () const
*/
$method=|QAbstractNetworkCache *|cache|

/*
QNetworkConfiguration configuration () const
*/
$method=|QNetworkConfiguration|configuration|

/*
QNetworkCookieJar * cookieJar () const
*/
$method=|QNetworkCookieJar *|cookieJar|

/*
QNetworkReply * deleteResource ( const QNetworkRequest & request )
*/
$method=|QNetworkReply *|deleteResource|const QNetworkRequest &

/*
QNetworkReply * get ( const QNetworkRequest & request )
*/
$method=|QNetworkReply *|get|const QNetworkRequest &

/*
QNetworkReply * head ( const QNetworkRequest & request )
*/
$method=|QNetworkReply *|head|const QNetworkRequest &

/*
NetworkAccessibility networkAccessible () const
*/
$method=|QNetworkAccessManager::NetworkAccessibility|networkAccessible|

/*
QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
*/
$method=|QNetworkReply *|post,post1|const QNetworkRequest &,QIODevice *

/*
QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )
*/
$method=|QNetworkReply *|post,post2|const QNetworkRequest &,const QByteArray &

//[1]QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
//[2]QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_POST1 );
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_POST2 );
  }
}

/*
QNetworkProxy proxy () const
*/
$method=|QNetworkProxy|proxy|

/*
QNetworkProxyFactory * proxyFactory () const
*/
$method=|QNetworkProxyFactory *|proxyFactory|

/*
QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
*/
$method=|QNetworkReply *|put,put1|const QNetworkRequest &,QIODevice *

/*
QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )
*/
$method=|QNetworkReply *|put,put2|const QNetworkRequest &,const QByteArray &

//[1]QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
//[2]QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_PUT1 );
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_PUT2 );
  }
}

/*
QNetworkReply * sendCustomRequest ( const QNetworkRequest & request, const QByteArray & verb, QIODevice * data = 0 )
*/
$method=|QNetworkReply *|sendCustomRequest|const QNetworkRequest &,const QByteArray &,QIODevice *=0

/*
void setCache ( QAbstractNetworkCache * cache )
*/
$method=|void|setCache|QAbstractNetworkCache *

/*
void setConfiguration ( const QNetworkConfiguration & config )
*/
$method=|void|setConfiguration|const QNetworkConfiguration &

/*
void setCookieJar ( QNetworkCookieJar * cookieJar )
*/
$method=|void|setCookieJar|QNetworkCookieJar *

/*
void setNetworkAccessible ( NetworkAccessibility accessible )
*/
$method=|void|setNetworkAccessible|QNetworkAccessManager::NetworkAccessibility

/*
void setProxy ( const QNetworkProxy & proxy )
*/
$method=|void|setProxy|const QNetworkProxy &

/*
void setProxyFactory ( QNetworkProxyFactory * factory )
*/
$method=|void|setProxyFactory|QNetworkProxyFactory *

#pragma ENDDUMP
