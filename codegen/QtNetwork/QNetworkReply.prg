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

$beginClassFrom=QIODevice

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QSslConfiguration>

$deleteMethod

$prototypeV2=virtual void abort() = 0

$prototype=QVariant attribute ( QNetworkRequest::Attribute code ) const
$method=|QVariant|attribute|QNetworkRequest::Attribute

$prototypeV2=QNetworkReply::NetworkError error() const

$prototype=bool hasRawHeader ( const QByteArray & headerName ) const
$method=|bool|hasRawHeader|const QByteArray &

$prototype=QVariant header ( QNetworkRequest::KnownHeaders header ) const
$method=|QVariant|header|QNetworkRequest::KnownHeaders

$prototype=void ignoreSslErrors ( const QList<QSslError> & errors )
$internalMethod=|void|ignoreSslErrors,ignoreSslErrors1|const QList<QSslError> &

$prototype=virtual void ignoreSslErrors ()
$internalVirtualMethod=|void|ignoreSslErrors,ignoreSslErrors2|

/*
[1]void ignoreSslErrors ( const QList<QSslError> & errors )
[2]virtual void ignoreSslErrors ()
*/

HB_FUNC_STATIC( QNETWORKREPLY_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QNetworkReply_ignoreSslErrors1();
  }
  else if( ISNUMPAR(0) )
  {
    QNetworkReply_ignoreSslErrors2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=ignoreSslErrors

$prototypeV2=bool isFinished() const

$prototypeV2=bool isRunning() const

$prototypeV2=QNetworkAccessManager * manager() const

$prototypeV2=QNetworkAccessManager::Operation operation() const

$prototype=QByteArray rawHeader ( const QByteArray & headerName ) const
$method=|QByteArray|rawHeader|const QByteArray &

$prototype=QList<QByteArray> rawHeaderList () const
$method=|QList<QByteArray>|rawHeaderList|

$prototypeV2=qint64 readBufferSize() const

$prototypeV2=QNetworkRequest request() const

$prototype=virtual void setReadBufferSize ( qint64 size )
$virtualMethod=|void|setReadBufferSize|qint64

$prototype=void setSslConfiguration ( const QSslConfiguration & config )
$method=|void|setSslConfiguration|const QSslConfiguration &

$prototypeV2=QSslConfiguration sslConfiguration() const

$prototypeV2=QUrl url() const

$prototypeV2=virtual void close()

$beginSignals
$signal=|downloadProgress(qint64,qint64)
$signal=|error(QNetworkReply::NetworkError)
$signal=|finished()
$signal=|metaDataChanged()
$signal=|sslErrors(QList<QSslError>)
$signal=|uploadProgress(qint64,qint64)
$endSignals

#pragma ENDDUMP
