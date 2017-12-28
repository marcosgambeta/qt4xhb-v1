$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QBYTEARRAY
#endif

CLASS QFtp INHERIT QObject

   METHOD new
   METHOD delete
   METHOD bytesAvailable
   METHOD cd
   METHOD clearPendingCommands
   METHOD close
   METHOD connectToHost
   METHOD currentCommand
   METHOD currentDevice
   METHOD currentId
   METHOD error
   METHOD errorString
   METHOD get
   METHOD hasPendingCommands
   METHOD list
   METHOD login
   METHOD mkdir
   METHOD put1
   METHOD put2
   METHOD put
   METHOD rawCommand
   METHOD read
   METHOD readAll
   METHOD remove
   METHOD rename
   METHOD rmdir
   METHOD setProxy
   METHOD setTransferMode
   METHOD state
   METHOD abort

   METHOD onCommandFinished
   METHOD onCommandStarted
   METHOD onDataTransferProgress
   METHOD onDone
   METHOD onListInfo
   METHOD onRawCommandReply
   METHOD onReadyRead
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFtp>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QFtp ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=qint64 bytesAvailable () const
$method=|qint64|bytesAvailable|

$prototype=int cd ( const QString & dir )
$method=|int|cd|const QString &

$prototype=void clearPendingCommands ()
$method=|void|clearPendingCommands|

$prototype=int close ()
$method=|int|close|

$prototype=int connectToHost ( const QString & host, quint16 port = 21 )
$method=|int|connectToHost|const QString &,quint16=21

$prototype=Command currentCommand () const
$method=|QFtp::Command|currentCommand|

$prototype=QIODevice * currentDevice () const
$method=|QIODevice *|currentDevice|

$prototype=int currentId () const
$method=|int|currentId|

$prototype=Error error () const
$method=|QFtp::Error|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=int get ( const QString & file, QIODevice * dev = 0, TransferType type = Binary )
$method=|int|get|const QString &,QIODevice *=0,QFtp::TransferType=QFtp::Binary

$prototype=bool hasPendingCommands () const
$method=|bool|hasPendingCommands|

$prototype=int list ( const QString & dir = QString() )
$method=|int|list|const QString &=QString()

$prototype=int login ( const QString & user = QString(), const QString & password = QString() )
$method=|int|login|const QString &=QString(),const QString &=QString()

$prototype=int mkdir ( const QString & dir )
$method=|int|mkdir|const QString &

$prototype=int put ( QIODevice * dev, const QString & file, TransferType type = Binary )
$method=|int|put,put1|QIODevice *,const QString &,QFtp::TransferType=QFtp::Binary

$prototype=int put ( const QByteArray & data, const QString & file, TransferType type = Binary )
$method=|int|put,put2|const QByteArray &,const QString &,QFtp::TransferType=QFtp::Binary

//[1]int put ( QIODevice * dev, const QString & file, TransferType type = Binary )
//[2]int put ( const QByteArray & data, const QString & file, TransferType type = Binary )

HB_FUNC_STATIC( QFTP_PUT )
{
  if( ISBETWEEN(2,3) && ISQIODEVICE(1) && ISCHAR(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QFTP_PUT1 );
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISCHAR(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QFTP_PUT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int rawCommand ( const QString & command )
$method=|int|rawCommand|const QString &

$prototype=qint64 read ( char * data, qint64 maxlen )
%% TODO: corrigir 'char *'
$method=|qint64|read|char *,qint64

$prototype=QByteArray readAll ()
$method=|QByteArray|readAll|

$prototype=int remove ( const QString & file )
$method=|int|remove|const QString &

$prototype=int rename ( const QString & oldname, const QString & newname )
$method=|int|rename|const QString &,const QString &

$prototype=int rmdir ( const QString & dir )
$method=|int|rmdir|const QString &

$prototype=int setProxy ( const QString & host, quint16 port )
$method=|int|setProxy|const QString &,quint16

$prototype=int setTransferMode ( TransferMode mode )
$method=|int|setTransferMode|QFtp::TransferMode

$prototype=State state () const
$method=|QFtp::State|state|

$prototype=void abort ()
$method=|void|abort|

#pragma ENDDUMP
