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

#include <QtNetwork/QLocalSocket>

$prototype=QLocalServer ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=void close()

$prototypeV2=QString errorString() const

$prototypeV2=QString fullServerName() const

$prototypeV2=virtual bool hasPendingConnections() const

$prototypeV2=bool isListening() const

$prototypeV2=bool listen( const QString & name )

$prototypeV2=int maxPendingConnections() const

$prototypeV2=virtual QLocalSocket * nextPendingConnection()

$prototypeV2=QAbstractSocket::SocketError serverError() const

$prototypeV2=QString serverName() const

$prototypeV2=void setMaxPendingConnections( int numConnections )

$prototype=bool waitForNewConnection ( int msec = 0, bool * timedOut = 0 )
$method=|bool|waitForNewConnection|int=0,bool *=0

$prototypeV2=static bool removeServer( const QString & name )

$beginSignals
$signal=|newConnection()
$endSignals

#pragma ENDDUMP
