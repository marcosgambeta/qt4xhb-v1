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

$prototype=void close ()
$method=|void|close|

$prototypeV2=QString errorString() const

$prototypeV2=virtual bool hasPendingConnections() const

$prototypeV2=bool isListening() const

$prototype=bool listen ( const QHostAddress & address = QHostAddress::Any, quint16 port = 0 )
$method=|bool|listen|const QHostAddress &=QHostAddress::Any,quint16=0

$prototypeV2=int maxPendingConnections() const

$prototype=virtual QTcpSocket * nextPendingConnection ()
$virtualMethod=|QTcpSocket *|nextPendingConnection|

$prototype=QNetworkProxy proxy () const
$method=|QNetworkProxy|proxy|

$prototype=QHostAddress serverAddress () const
$method=|QHostAddress|serverAddress|

$prototype=QAbstractSocket::SocketError serverError () const
$method=|QAbstractSocket::SocketError|serverError|

$prototype=quint16 serverPort () const
$method=|quint16|serverPort|

$prototype=void setMaxPendingConnections ( int numConnections )
$method=|void|setMaxPendingConnections|int

$prototype=void setProxy ( const QNetworkProxy & networkProxy )
$method=|void|setProxy|const QNetworkProxy &

$prototype=bool setSocketDescriptor ( int socketDescriptor )
$method=|bool|setSocketDescriptor|int

$prototypeV2=int socketDescriptor() const

$prototype=bool waitForNewConnection ( int msec = 0, bool * timedOut = 0 )
$method=|bool|waitForNewConnection|int=0,bool *=0

$beginSignals
$signal=|newConnection()
$endSignals

#pragma ENDDUMP
