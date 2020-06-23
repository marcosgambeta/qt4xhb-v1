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

#include <QtCore/QDateTime>

$prototype=QNetworkCookie ( const QByteArray & name = QByteArray(), const QByteArray & value = QByteArray() )
$internalConstructor=|new1|const QByteArray &=QByteArray(),const QByteArray &=QByteArray()

$prototype=QNetworkCookie ( const QNetworkCookie & other )
$internalConstructor=|new2|const QNetworkCookie &

/*
[1]QNetworkCookie ( const QByteArray & name = QByteArray(), const QByteArray & value = QByteArray() )
[2]QNetworkCookie ( const QNetworkCookie & other )
*/

HB_FUNC_STATIC( QNETWORKCOOKIE_NEW )
{
  if( ISBETWEEN(0,2) && (ISQBYTEARRAY(1)||ISNIL(1)) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    QNetworkCookie_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKCOOKIE(1) )
  {
    QNetworkCookie_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QString domain() const

$prototypeV2=QDateTime expirationDate() const

$prototypeV2=bool isHttpOnly() const

$prototypeV2=bool isSecure() const

$prototypeV2=bool isSessionCookie() const

$prototypeV2=QByteArray name() const

$prototypeV2=QString path() const

$prototypeV2=void setDomain( const QString & domain )

$prototypeV2=void setExpirationDate( const QDateTime & date )

$prototypeV2=void setHttpOnly( bool enable )

$prototypeV2=void setName( const QByteArray & cookieName )

$prototypeV2=void setPath( const QString & path )

$prototypeV2=void setSecure( bool enable )

$prototypeV2=void setValue( const QByteArray & value )

$prototype=QByteArray toRawForm ( RawForm form = Full ) const
$method=|QByteArray|toRawForm|QNetworkCookie::RawForm=QNetworkCookie::Full

$prototypeV2=QByteArray value() const

$prototypeV2=QList<QNetworkCookie> parseCookies( const QByteArray & cookieString )

$extraMethods

#pragma ENDDUMP
