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

$prototype=QFtp ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=qint64 bytesAvailable() const

$prototypeV2=int cd( const QString & dir )

$prototypeV2=void clearPendingCommands()

$prototypeV2=int close()

$prototype=int connectToHost ( const QString & host, quint16 port = 21 )
$method=|int|connectToHost|const QString &,quint16=21

$prototypeV2=QFtp::Command currentCommand() const

$prototypeV2=QIODevice * currentDevice() const

$prototypeV2=int currentId() const

$prototypeV2=QFtp::Error error() const

$prototypeV2=QString errorString() const

$prototype=int get ( const QString & file, QIODevice * dev = 0, TransferType type = Binary )
$method=|int|get|const QString &,QIODevice *=0,QFtp::TransferType=QFtp::Binary

$prototypeV2=bool hasPendingCommands() const

$prototype=int list ( const QString & dir = QString() )
$method=|int|list|const QString &=QString()

$prototype=int login ( const QString & user = QString(), const QString & password = QString() )
$method=|int|login|const QString &=QString(),const QString &=QString()

$prototypeV2=int mkdir( const QString & dir )

$prototype=int put ( QIODevice * dev, const QString & file, TransferType type = Binary )
$internalMethod=|int|put,put1|QIODevice *,const QString &,QFtp::TransferType=QFtp::Binary

$prototype=int put ( const QByteArray & data, const QString & file, TransferType type = Binary )
$internalMethod=|int|put,put2|const QByteArray &,const QString &,QFtp::TransferType=QFtp::Binary

/*
[1]int put ( QIODevice * dev, const QString & file, TransferType type = Binary )
[2]int put ( const QByteArray & data, const QString & file, TransferType type = Binary )
*/

HB_FUNC_STATIC( QFTP_PUT )
{
  if( ISBETWEEN(2,3) && ISQIODEVICE(1) && ISCHAR(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QFtp_put1();
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISCHAR(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QFtp_put2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=put

$prototypeV2=int rawCommand( const QString & command )

$prototypeV2=qint64 read( char * data, qint64 maxlen )
%% TODO: corrigir 'char *'

$prototypeV2=QByteArray readAll()

$prototypeV2=int remove( const QString & file )

$prototypeV2=int rename( const QString & oldname, const QString & newname )

$prototypeV2=int rmdir( const QString & dir )

$prototypeV2=int setProxy( const QString & host, quint16 port )

$prototypeV2=int setTransferMode( QFtp::TransferMode mode )

$prototypeV2=QFtp::State state() const

$prototypeV2=void abort()

$beginSignals
$signal=|commandFinished(int,bool)
$signal=|commandStarted(int)
$signal=|dataTransferProgress(qint64,qint64)
$signal=|done(bool)
$signal=|listInfo(QUrlInfo)
$signal=|rawCommandReply(int,QString)
$signal=|readyRead()
$signal=|stateChanged(int)
$endSignals

#pragma ENDDUMP
