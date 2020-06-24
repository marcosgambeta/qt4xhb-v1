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

#include <QtNetwork/QNetworkProxy>
#include <QtNetwork/QTcpSocket>

$prototype=QTcpServer ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=void close()

$prototypeV2=QString errorString() const

$prototypeV2=virtual bool hasPendingConnections() const

$prototypeV2=bool isListening() const

$prototypeV2=bool listen( const QHostAddress & address = QHostAddress::Any, quint16 port = 0 )

$prototypeV2=int maxPendingConnections() const

$prototypeV2=virtual QTcpSocket * nextPendingConnection()

$prototypeV2=QNetworkProxy proxy() const

$prototypeV2=QHostAddress serverAddress() const

$prototypeV2=QAbstractSocket::SocketError serverError() const

$prototypeV2=quint16 serverPort() const

$prototypeV2=void setMaxPendingConnections( int numConnections )

$prototypeV2=void setProxy( const QNetworkProxy & networkProxy )

$prototypeV2=bool setSocketDescriptor( int socketDescriptor )

$prototypeV2=int socketDescriptor() const

$prototypeV2=bool waitForNewConnection( int msec = 0, bool * timedOut = 0 )

$beginSignals
$signal=|newConnection()
$endSignals

#pragma ENDDUMP
