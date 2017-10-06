$header

#include "hbclass.ch"

CLASS QLocalSocket INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD abort
   METHOD connectToServer
   METHOD disconnectFromServer
   METHOD error
   METHOD flush
   METHOD fullServerName
   METHOD isValid
   METHOD readBufferSize
   METHOD serverName
   METHOD setReadBufferSize
   METHOD state
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead

   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QLocalSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QLocalSocket ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void abort ()
*/
$method=|void|abort|

/*
void connectToServer ( const QString & name, OpenMode openMode = ReadWrite )
*/
$method=|void|connectToServer|const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

/*
void disconnectFromServer ()
*/
$method=|void|disconnectFromServer|

/*
LocalSocketError error () const
*/
$method=|QLocalSocket::LocalSocketError|error|

/*
bool flush ()
*/
$method=|bool|flush|

/*
QString fullServerName () const
*/
$method=|QString|fullServerName|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
qint64 readBufferSize () const
*/
$method=|qint64|readBufferSize|

/*
QString serverName () const
*/
$method=|QString|serverName|

/*
void setReadBufferSize ( qint64 size )
*/
$method=|void|setReadBufferSize|qint64

/*
LocalSocketState state () const
*/
$method=|QLocalSocket::LocalSocketState|state|

/*
bool waitForConnected ( int msecs = 30000 )
*/
$method=|bool|waitForConnected|int=30000

/*
bool waitForDisconnected ( int msecs = 30000 )
*/
$method=|bool|waitForDisconnected|int=30000

/*
virtual qint64 bytesAvailable () const
*/
$virtualMethod=|qint64|bytesAvailable|

/*
virtual qint64 bytesToWrite () const
*/
$virtualMethod=|qint64|bytesToWrite|

/*
virtual bool canReadLine () const
*/
$virtualMethod=|bool|canReadLine|

/*
virtual void close ()
*/
$virtualMethod=|void|close|

/*
virtual bool isSequential () const
*/
$virtualMethod=|bool|isSequential|

/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
$virtualMethod=|bool|waitForBytesWritten|int=30000

/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
$virtualMethod=|bool|waitForReadyRead|int=30000

#pragma ENDDUMP
