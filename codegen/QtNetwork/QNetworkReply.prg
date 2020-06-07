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

$prototype=virtual void abort () = 0
$virtualMethod=|void|abort|

$prototype=QVariant attribute ( QNetworkRequest::Attribute code ) const
$method=|QVariant|attribute|QNetworkRequest::Attribute

$prototype=NetworkError error () const
$method=|QNetworkReply::NetworkError|error|

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

$prototype=QNetworkAccessManager * manager () const
$method=|QNetworkAccessManager *|manager|

$prototype=QNetworkAccessManager::Operation operation () const
$method=|QNetworkAccessManager::Operation|operation|

$prototype=QByteArray rawHeader ( const QByteArray & headerName ) const
$method=|QByteArray|rawHeader|const QByteArray &

$prototype=QList<QByteArray> rawHeaderList () const
$method=|QList<QByteArray>|rawHeaderList|

$prototype=qint64 readBufferSize () const
$method=|qint64|readBufferSize|

$prototype=QNetworkRequest request () const
$method=|QNetworkRequest|request|

$prototype=virtual void setReadBufferSize ( qint64 size )
$virtualMethod=|void|setReadBufferSize|qint64

$prototype=void setSslConfiguration ( const QSslConfiguration & config )
$method=|void|setSslConfiguration|const QSslConfiguration &

$prototype=QSslConfiguration sslConfiguration () const
$method=|QSslConfiguration|sslConfiguration|

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=virtual void close ()
$virtualMethod=|void|close|

$beginSignals
$signal=|downloadProgress(qint64,qint64)
$signal=|error(QNetworkReply::NetworkError)
$signal=|finished()
$signal=|metaDataChanged()
$signal=|sslErrors(QList<QSslError>)
$signal=|uploadProgress(qint64,qint64)
$endSignals

#pragma ENDDUMP
