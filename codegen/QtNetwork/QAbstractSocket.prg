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

#include <QtNetwork/QHostAddress>
#include <QtNetwork/QNetworkProxy>

$prototype=QAbstractSocket ( SocketType socketType, QObject * parent )
$constructor=|new|QAbstractSocket::SocketType,QObject *

$deleteMethod

$prototypeV2=void abort()

$prototype=void connectToHost ( const QString & hostName, quint16 port, OpenMode openMode = ReadWrite )
$method=|void|connectToHost,connectToHost1|const QString &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToHost ( const QHostAddress & address, quint16 port, OpenMode openMode = ReadWrite )
$method=|void|connectToHost,connectToHost2|const QHostAddress &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

%% TODO:
/*
[1]void connectToHost ( const QString & hostName, quint16 port, OpenMode openMode = ReadWrite )
[2]void connectToHost ( const QHostAddress & address, quint16 port, OpenMode openMode = ReadWrite )
*/

$prototypeV2=void disconnectFromHost()

$prototypeV2=QAbstractSocket::SocketError error() const

$prototypeV2=bool flush()

$prototypeV2=bool isValid() const

$prototypeV2=QHostAddress localAddress() const

$prototypeV2=quint16 localPort() const

$prototypeV2=QHostAddress peerAddress() const

$prototypeV2=QString peerName() const

$prototypeV2=quint16 peerPort() const

$prototypeV2=QNetworkProxy proxy() const

$prototypeV2=qint64 readBufferSize() const

$prototypeV2=void setProxy( const QNetworkProxy & networkProxy )

$prototypeV2=void setReadBufferSize( qint64 size )

$prototypeV2=bool setSocketDescriptor( int socketDescriptor, QAbstractSocket::SocketState socketState = QAbstractSocket::ConnectedState, QIODevice::OpenMode openMode = QIODevice::ReadWrite )

$prototypeV2=void setSocketOption( QAbstractSocket::SocketOption option, const QVariant & value )

$prototypeV2=int socketDescriptor() const

$prototypeV2=QVariant socketOption( QAbstractSocket::SocketOption option )

$prototypeV2=QAbstractSocket::SocketType socketType() const

$prototypeV2=QAbstractSocket::SocketState state() const

$prototypeV2=bool waitForConnected( int msecs = 30000 )

$prototypeV2=bool waitForDisconnected( int msecs = 30000 )

$prototypeV2=virtual bool atEnd() const

$prototypeV2=virtual qint64 bytesAvailable() const

$prototypeV2=virtual qint64 bytesToWrite() const

$prototypeV2=virtual bool canReadLine() const

$prototypeV2=virtual void close()

$prototypeV2=virtual bool isSequential() const

$prototypeV2=virtual bool waitForBytesWritten( int msecs = 30000 )

$prototypeV2=virtual bool waitForReadyRead( int msecs = 30000 )

$beginSignals
$signal=|connected()
$signal=|disconnected()
$signal=|error(QAbstractSocket::SocketError)
$signal=|hostFound()
$signal=|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)
$signal=|stateChanged(QAbstractSocket::SocketState)
$endSignals

#pragma ENDDUMP
