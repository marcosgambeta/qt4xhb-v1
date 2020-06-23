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

#include <QtNetwork/QSslKey>
#include <QtNetwork/QSslCipher>

$prototype=QSslConfiguration ()
$internalConstructor=|new1|

$prototype=QSslConfiguration ( const QSslConfiguration & other )
$internalConstructor=|new2|const QSslConfiguration &

/*
[1]QSslConfiguration ()
[2]QSslConfiguration ( const QSslConfiguration & other )
*/

HB_FUNC_STATIC( QSSLCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslConfiguration_new1();
  }
  if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
  {
    QSslConfiguration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QList<QSslCertificate> caCertificates() const

$prototypeV2=QList<QSslCipher> ciphers() const

$prototypeV2=bool isNull() const

$prototypeV2=QSslCertificate localCertificate() const

$prototypeV2=QSslCertificate peerCertificate() const

$prototypeV2=QList<QSslCertificate> peerCertificateChain() const

$prototypeV2=int peerVerifyDepth() const

$prototypeV2=QSslSocket::PeerVerifyMode peerVerifyMode() const

$prototypeV2=QSslKey privateKey() const

$prototypeV2=QSsl::SslProtocol protocol() const

$prototypeV2=QSslCipher sessionCipher() const

$prototypeV2=void setCaCertificates( const QList<QSslCertificate> & certificates )

$prototypeV2=void setCiphers( const QList<QSslCipher> & ciphers )

$prototypeV2=void setLocalCertificate( const QSslCertificate & certificate )

$prototypeV2=void setPeerVerifyDepth( int depth )

$prototypeV2=void setPeerVerifyMode( QSslSocket::PeerVerifyMode mode )

$prototypeV2=void setPrivateKey( const QSslKey & key )

$prototypeV2=void setProtocol( QSsl::SslProtocol protocol )

$prototypeV2=static QSslConfiguration defaultConfiguration()

$prototypeV2=static void setDefaultConfiguration( const QSslConfiguration & configuration )

$extraMethods

#pragma ENDDUMP
