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

//[1]QDataStream ()
//[2]QDataStream ( QIODevice * d )
//[3]QDataStream ( QByteArray * a, QIODevice::OpenMode mode )
//[4]QDataStream ( const QByteArray & a )

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

$deleteMethod

$prototype=bool atEnd () const
$method=|bool|atEnd|

$prototype=ByteOrder byteOrder () const
$method=|QDataStream::ByteOrder|byteOrder|

$prototype=QIODevice * device () const
$method=|QIODevice *|device|

$prototype=FloatingPointPrecision floatingPointPrecision () const
$method=|QDataStream::FloatingPointPrecision|floatingPointPrecision|

$prototype=int readRawData ( char * s, int len )
$method=|int|readRawData|char *,int

$prototype=void resetStatus ()
$method=|void|resetStatus|

$prototype=void setByteOrder ( ByteOrder bo )
$method=|void|setByteOrder|QDataStream::ByteOrder

$prototype=void setDevice ( QIODevice * d )
$method=|void|setDevice|QIODevice *

$prototype=void setFloatingPointPrecision ( FloatingPointPrecision precision )
$method=|void|setFloatingPointPrecision|QDataStream::FloatingPointPrecision

$prototype=void setStatus ( Status status )
$method=|void|setStatus|QDataStream::Status

$prototype=void setVersion ( int v )
$method=|void|setVersion|int

$prototype=int skipRawData ( int len )
$method=|int|skipRawData|int

$prototype=Status status () const
$method=|QDataStream::Status|status|

$prototype=int version () const
$method=|int|version|

$prototype=int writeRawData ( const char * s, int len )
$method=|int|writeRawData|const char *,int

$extraMethods

#pragma ENDDUMP
