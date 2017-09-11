$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIODEVICE
#endif

CLASS QDataStream

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
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
HB_FUNC_STATIC( QDATASTREAM_NEW1 )
{
  QDataStream * o = new QDataStream ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDataStream ( QIODevice * d )
*/
HB_FUNC_STATIC( QDATASTREAM_NEW2 )
{
  QDataStream * o = new QDataStream ( PQIODEVICE(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDataStream ( QByteArray * a, QIODevice::OpenMode mode )
*/
HB_FUNC_STATIC( QDATASTREAM_NEW3 )
{
  QDataStream * o = new QDataStream ( PQBYTEARRAY(1), (QIODevice::OpenMode) hb_parni(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDataStream ( const QByteArray & a )
*/
HB_FUNC_STATIC( QDATASTREAM_NEW4 )
{
  QDataStream * o = new QDataStream ( *PQBYTEARRAY(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QDataStream ()
//[2]QDataStream ( QIODevice * d )
//[3]QDataStream ( QByteArray * a, QIODevice::OpenMode mode )
//[4]QDataStream ( const QByteArray & a )

HB_FUNC_STATIC( QDATASTREAM_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDATASTREAM_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QDATASTREAM_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATASTREAM_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QDATASTREAM_NEW4 );
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
HB_FUNC_STATIC( QDATASTREAM_ATEND )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->atEnd () );
  }
}


/*
ByteOrder byteOrder () const
*/
HB_FUNC_STATIC( QDATASTREAM_BYTEORDER )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->byteOrder () );
  }
}


/*
QIODevice * device () const
*/
HB_FUNC_STATIC( QDATASTREAM_DEVICE )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
FloatingPointPrecision floatingPointPrecision () const
*/
HB_FUNC_STATIC( QDATASTREAM_FLOATINGPOINTPRECISION )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->floatingPointPrecision () );
  }
}



/*
int readRawData ( char * s, int len )
*/
HB_FUNC_STATIC( QDATASTREAM_READRAWDATA )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->readRawData ( par1, PINT(2) ) );
  }
}


/*
void resetStatus ()
*/
HB_FUNC_STATIC( QDATASTREAM_RESETSTATUS )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resetStatus ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setByteOrder ( ByteOrder bo )
*/
HB_FUNC_STATIC( QDATASTREAM_SETBYTEORDER )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setByteOrder ( (QDataStream::ByteOrder) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDevice ( QIODevice * d )
*/
HB_FUNC_STATIC( QDATASTREAM_SETDEVICE )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDevice ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFloatingPointPrecision ( FloatingPointPrecision precision )
*/
HB_FUNC_STATIC( QDATASTREAM_SETFLOATINGPOINTPRECISION )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFloatingPointPrecision ( (QDataStream::FloatingPointPrecision) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStatus ( Status status )
*/
HB_FUNC_STATIC( QDATASTREAM_SETSTATUS )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStatus ( (QDataStream::Status) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVersion ( int v )
*/
HB_FUNC_STATIC( QDATASTREAM_SETVERSION )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVersion ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int skipRawData ( int len )
*/
HB_FUNC_STATIC( QDATASTREAM_SKIPRAWDATA )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->skipRawData ( PINT(1) ) );
  }
}


/*
Status status () const
*/
HB_FUNC_STATIC( QDATASTREAM_STATUS )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->status () );
  }
}


/*
int version () const
*/
HB_FUNC_STATIC( QDATASTREAM_VERSION )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->version () );
  }
}



/*
int writeRawData ( const char * s, int len )
*/
HB_FUNC_STATIC( QDATASTREAM_WRITERAWDATA )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->writeRawData ( (const char *) hb_parc(1), PINT(2) ) );
  }
}

$extraMethods

#pragma ENDDUMP
