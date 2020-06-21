%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDataStream ()
$internalConstructor=|new1|

$prototype=QDataStream ( QIODevice * d )
$internalConstructor=|new2|QIODevice *

$prototype=QDataStream ( QByteArray * a, QIODevice::OpenMode mode )
$internalConstructor=|new3|QByteArray *,QIODevice::OpenMode

$prototype=QDataStream ( const QByteArray & a )
$internalConstructor=|new4|const QByteArray &

/*
[1]QDataStream ()
[2]QDataStream ( QIODevice * d )
[3]QDataStream ( QByteArray * a, QIODevice::OpenMode mode )
[4]QDataStream ( const QByteArray & a )
*/

HB_FUNC_STATIC( QDATASTREAM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDataStream_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QDataStream_new2();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QDataStream_new3();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QDataStream_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool atEnd() const

$prototypeV2=QDataStream::ByteOrder byteOrder() const

$prototypeV2=QIODevice * device() const

$prototypeV2=QDataStream::FloatingPointPrecision floatingPointPrecision() const

$prototype=int readRawData ( char * s, int len )
$method=|int|readRawData|char *,int

$prototypeV2=void resetStatus()

$prototypeV2=void setByteOrder( QDataStream::ByteOrder bo )

$prototypeV2=void setDevice( QIODevice * d )

$prototypeV2=void setFloatingPointPrecision( QDataStream::FloatingPointPrecision precision )

$prototypeV2=void setStatus( QDataStream::Status status )

$prototypeV2=void setVersion( int v )

$prototypeV2=int skipRawData( int len )

$prototypeV2=QDataStream::Status status() const

$prototypeV2=int version() const

$prototype=int writeRawData ( const char * s, int len )
$method=|int|writeRawData|const char *,int

$extraMethods

#pragma ENDDUMP
