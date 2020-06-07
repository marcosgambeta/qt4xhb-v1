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

$prototype=QLocalSocket ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void abort ()
$method=|void|abort|

$prototype=void connectToServer ( const QString & name, OpenMode openMode = ReadWrite )
$method=|void|connectToServer|const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void disconnectFromServer ()
$method=|void|disconnectFromServer|

$prototype=LocalSocketError error () const
$method=|QLocalSocket::LocalSocketError|error|

$prototypeV2=bool flush()

$prototype=QString fullServerName () const
$method=|QString|fullServerName|

$prototypeV2=bool isValid() const

$prototype=qint64 readBufferSize () const
$method=|qint64|readBufferSize|

$prototype=QString serverName () const
$method=|QString|serverName|

$prototype=void setReadBufferSize ( qint64 size )
$method=|void|setReadBufferSize|qint64

$prototype=LocalSocketState state () const
$method=|QLocalSocket::LocalSocketState|state|

$prototype=bool waitForConnected ( int msecs = 30000 )
$method=|bool|waitForConnected|int=30000

$prototype=bool waitForDisconnected ( int msecs = 30000 )
$method=|bool|waitForDisconnected|int=30000

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
$signal=|error(QLocalSocket::LocalSocketError)
$signal=|stateChanged(QLocalSocket::LocalSocketState)
$endSignals

#pragma ENDDUMP
