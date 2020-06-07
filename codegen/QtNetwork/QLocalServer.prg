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

$prototype=void close ()
$method=|void|close|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QString fullServerName () const
$method=|QString|fullServerName|

$prototypeV2=virtual bool hasPendingConnections() const

$prototypeV2=bool isListening() const

$prototype=bool listen ( const QString & name )
$method=|bool|listen|const QString &

$prototypeV2=int maxPendingConnections() const

$prototype=virtual QLocalSocket * nextPendingConnection ()
$virtualMethod=|QLocalSocket *|nextPendingConnection|

$prototype=QAbstractSocket::SocketError serverError () const
$method=|QAbstractSocket::SocketError|serverError|

$prototype=QString serverName () const
$method=|QString|serverName|

$prototype=void setMaxPendingConnections ( int numConnections )
$method=|void|setMaxPendingConnections|int

$prototype=bool waitForNewConnection ( int msec = 0, bool * timedOut = 0 )
$method=|bool|waitForNewConnection|int=0,bool *=0

$prototype=static bool removeServer ( const QString & name )
$staticMethod=|bool|removeServer|const QString &

$beginSignals
$signal=|newConnection()
$endSignals

#pragma ENDDUMP
