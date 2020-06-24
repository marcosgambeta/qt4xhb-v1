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

#include <QtNetwork/QSslConfiguration>

$prototype=QNetworkRequest ( const QUrl & url = QUrl() )
$internalConstructor=|new1|const QUrl &=QUrl()

$prototype=QNetworkRequest ( const QNetworkRequest & other )
$internalConstructor=|new2|const QNetworkRequest &

/*
[1]QNetworkRequest ( const QUrl & url = QUrl() )
[2]QNetworkRequest ( const QNetworkRequest & other )
*/

HB_FUNC_STATIC( QNETWORKREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISQURL(1)||ISNIL(1)) )
  {
    QNetworkRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
  {
    QNetworkRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QVariant attribute( QNetworkRequest::Attribute code, const QVariant & defaultValue = QVariant() ) const

$prototypeV2=bool hasRawHeader( const QByteArray & headerName ) const

$prototypeV2=QVariant header( QNetworkRequest::KnownHeaders header ) const

$prototypeV2=QObject * originatingObject() const

$prototypeV2=QNetworkRequest::Priority priority() const

$prototypeV2=QByteArray rawHeader( const QByteArray & headerName ) const

$prototypeV2=QList<QByteArray> rawHeaderList() const

$prototypeV2=void setAttribute( QNetworkRequest::Attribute code, const QVariant & value )

$prototypeV2=void setHeader( QNetworkRequest::KnownHeaders header, const QVariant & value )

$prototypeV2=void setOriginatingObject( QObject * object )

$prototypeV2=void setPriority( QNetworkRequest::Priority priority )

$prototypeV2=void setRawHeader( const QByteArray & headerName, const QByteArray & headerValue )

$prototypeV2=void setSslConfiguration( const QSslConfiguration & config )

$prototypeV2=void setUrl( const QUrl & url )

$prototypeV2=QSslConfiguration sslConfiguration() const

$prototypeV2=QUrl url() const

$extraMethods

#pragma ENDDUMP
