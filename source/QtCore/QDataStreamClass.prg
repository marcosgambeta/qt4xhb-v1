/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIODEVICE
#endif

CLASS QDataStream

   DATA pointer
   DATA class_id INIT Class_Id_QDataStream
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QDataStream
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDataStream>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QDataStream ()
*/
HB_FUNC_STATIC( QDATASTREAM_NEW1 )
{
  QDataStream * o = NULL;
  o = new QDataStream (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDataStream *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDataStream ( QIODevice * d )
*/
HB_FUNC_STATIC( QDATASTREAM_NEW2 )
{
  QDataStream * o = NULL;
  QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDataStream ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDataStream *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDataStream ( QByteArray * a, QIODevice::OpenMode mode )
*/
HB_FUNC_STATIC( QDATASTREAM_NEW3 )
{
  QDataStream * o = NULL;
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDataStream ( par1,  (QIODevice::OpenMode) hb_parni(2) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDataStream *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDataStream ( const QByteArray & a )
*/
HB_FUNC_STATIC( QDATASTREAM_NEW4 )
{
  QDataStream * o = NULL;
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDataStream ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDataStream *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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

HB_FUNC_STATIC( QDATASTREAM_DELETE )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool atEnd () const
*/
HB_FUNC_STATIC( QDATASTREAM_ATEND )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->atEnd (  ) );
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
    hb_retni( (int) obj->byteOrder (  ) );
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
    QIODevice * ptr = obj->device (  );
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
    hb_retni( (int) obj->floatingPointPrecision (  ) );
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
    hb_retni( obj->readRawData ( par1, hb_parni(2) ) );
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
    obj->resetStatus (  );
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
    obj->setByteOrder (  (QDataStream::ByteOrder) hb_parni(1) );
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
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDevice ( par1 );
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
    obj->setFloatingPointPrecision (  (QDataStream::FloatingPointPrecision) hb_parni(1) );
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
    obj->setStatus (  (QDataStream::Status) hb_parni(1) );
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
    obj->setVersion ( hb_parni(1) );
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
    hb_retni( obj->skipRawData ( hb_parni(1) ) );
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
    hb_retni( (int) obj->status (  ) );
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
    hb_retni( obj->version (  ) );
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
    const char * par1 = hb_parc(1);
    hb_retni( obj->writeRawData (  (const char *) par1, hb_parni(2) ) );
  }
}


HB_FUNC_STATIC( QDATASTREAM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDATASTREAM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDATASTREAM_NEWFROM );
}

HB_FUNC_STATIC( QDATASTREAM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDATASTREAM_NEWFROM );
}

HB_FUNC_STATIC( QDATASTREAM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDATASTREAM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}



#pragma ENDDUMP
