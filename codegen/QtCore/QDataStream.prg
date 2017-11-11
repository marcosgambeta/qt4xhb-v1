$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIODEVICE
#endif

CLASS QDataStream

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD atEnd
   METHOD byteOrder
   METHOD device
   METHOD floatingPointPrecision
   METHOD readRawData
   METHOD resetStatus
   METHOD setByteOrder
   METHOD setDevice
   METHOD setFloatingPointPrecision
   METHOD setStatus
   METHOD setVersion
   METHOD skipRawData
   METHOD status
   METHOD version
   METHOD writeRawData

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDataStream>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDataStream ()
*/
$internalConstructor=|new1|

/*
QDataStream ( QIODevice * d )
*/
$internalConstructor=|new2|QIODevice *

/*
QDataStream ( QByteArray * a, QIODevice::OpenMode mode )
*/
$internalConstructor=|new3|QByteArray *,QIODevice::OpenMode

/*
QDataStream ( const QByteArray & a )
*/
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

/*
bool atEnd () const
*/
$method=|bool|atEnd|

/*
ByteOrder byteOrder () const
*/
$method=|QDataStream::ByteOrder|byteOrder|

/*
QIODevice * device () const
*/
$method=|QIODevice *|device|

/*
FloatingPointPrecision floatingPointPrecision () const
*/
$method=|QDataStream::FloatingPointPrecision|floatingPointPrecision|

/*
int readRawData ( char * s, int len )
*/
$method=|int|readRawData|char *,int

/*
void resetStatus ()
*/
$method=|void|resetStatus|

/*
void setByteOrder ( ByteOrder bo )
*/
$method=|void|setByteOrder|QDataStream::ByteOrder

/*
void setDevice ( QIODevice * d )
*/
$method=|void|setDevice|QIODevice *

/*
void setFloatingPointPrecision ( FloatingPointPrecision precision )
*/
$method=|void|setFloatingPointPrecision|QDataStream::FloatingPointPrecision

/*
void setStatus ( Status status )
*/
$method=|void|setStatus|QDataStream::Status

/*
void setVersion ( int v )
*/
$method=|void|setVersion|int

/*
int skipRawData ( int len )
*/
$method=|int|skipRawData|int

/*
Status status () const
*/
$method=|QDataStream::Status|status|

/*
int version () const
*/
$method=|int|version|

/*
int writeRawData ( const char * s, int len )
*/
$method=|int|writeRawData|const char *,int

$extraMethods

#pragma ENDDUMP
