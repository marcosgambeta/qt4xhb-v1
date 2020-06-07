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

$prototype=void abort ()
$method=|void|abort|

$prototype=void connectToHost ( const QString & hostName, quint16 port, OpenMode openMode = ReadWrite )
$method=|void|connectToHost,connectToHost1|const QString &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToHost ( const QHostAddress & address, quint16 port, OpenMode openMode = ReadWrite )
$method=|void|connectToHost,connectToHost2|const QHostAddress &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void disconnectFromHost ()
$method=|void|disconnectFromHost|

$prototype=SocketError error () const
$method=|QAbstractSocket::SocketError|error|

$prototypeV2=bool flush()

$prototypeV2=bool isValid() const

$prototype=QHostAddress localAddress () const
$method=|QHostAddress|localAddress|

$prototype=quint16 localPort () const
$method=|quint16|localPort|

$prototype=QHostAddress peerAddress () const
$method=|QHostAddress|peerAddress|

$prototypeV2=QString peerName() const

$prototype=quint16 peerPort () const
$method=|quint16|peerPort|

$prototype=QNetworkProxy proxy () const
$method=|QNetworkProxy|proxy|

$prototype=qint64 readBufferSize () const
$method=|qint64|readBufferSize|

$prototype=void setProxy ( const QNetworkProxy & networkProxy )
$method=|void|setProxy|const QNetworkProxy &

$prototype=void setReadBufferSize ( qint64 size )
$method=|void|setReadBufferSize|qint64

$prototype=bool setSocketDescriptor ( int socketDescriptor, SocketState socketState = ConnectedState, OpenMode openMode = ReadWrite )
$method=|bool|setSocketDescriptor|int,QAbstractSocket::SocketState=QAbstractSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void setSocketOption ( QAbstractSocket::SocketOption option, const QVariant & value )
$method=|void|setSocketOption|QAbstractSocket::SocketOption,const QVariant &

$prototypeV2=int socketDescriptor() const

$prototype=QVariant socketOption ( QAbstractSocket::SocketOption option )
$method=|QVariant|socketOption|QAbstractSocket::SocketOption

$prototype=SocketType socketType () const
$method=|QAbstractSocket::SocketType|socketType|

$prototype=SocketState state () const
$method=|QAbstractSocket::SocketState|state|

$prototype=bool waitForConnected ( int msecs = 30000 )
$method=|bool|waitForConnected|int=30000

$prototype=bool waitForDisconnected ( int msecs = 30000 )
$method=|bool|waitForDisconnected|int=30000

$prototypeV2=virtual bool atEnd() const

$prototype=virtual qint64 bytesAvailable () const
$virtualMethod=|qint64|bytesAvailable|

$prototype=virtual qint64 bytesToWrite () const
$virtualMethod=|qint64|bytesToWrite|

$prototypeV2=virtual bool canReadLine() const

$prototype=virtual void close ()
$virtualMethod=|void|close|

$prototypeV2=virtual bool isSequential() const

$prototype=virtual bool waitForBytesWritten ( int msecs = 30000 )
$virtualMethod=|bool|waitForBytesWritten|int=30000

$prototype=virtual bool waitForReadyRead ( int msecs = 30000 )
$virtualMethod=|bool|waitForReadyRead|int=30000

$beginSignals
$signal=|connected()
$signal=|disconnected()
$signal=|error(QAbstractSocket::SocketError)
$signal=|hostFound()
$signal=|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)
$signal=|stateChanged(QAbstractSocket::SocketState)
$endSignals

#pragma ENDDUMP
