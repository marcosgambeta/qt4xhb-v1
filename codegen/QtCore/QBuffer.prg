$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QBuffer INHERIT QIODevice

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD buffer1
   METHOD buffer2
   METHOD buffer
   METHOD data
   METHOD setBuffer
   METHOD setData1
   METHOD setData2
   METHOD setData
   METHOD atEnd
   METHOD canReadLine
   METHOD close
   METHOD open
   METHOD pos
   METHOD seek
   METHOD size
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QBuffer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QBuffer ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QBUFFER_NEW1 )
{
  QBuffer * o = new QBuffer ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QBuffer ( QByteArray * byteArray, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QBUFFER_NEW2 )
{
  QBuffer * o = new QBuffer ( PQBYTEARRAY(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QBuffer ( QObject * parent = 0 )
//[2]QBuffer ( QByteArray * byteArray, QObject * parent = 0 )

HB_FUNC_STATIC( QBUFFER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QBUFFER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBUFFER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QByteArray & buffer ()
*/
HB_FUNC_STATIC( QBUFFER_BUFFER1 )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = &obj->buffer ();
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
const QByteArray & buffer () const
*/
HB_FUNC_STATIC( QBUFFER_BUFFER2 )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QByteArray * ptr = &obj->buffer ();
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[1]QByteArray & buffer ()
//[2]const QByteArray & buffer () const

HB_FUNC_STATIC( QBUFFER_BUFFER )
{
  HB_FUNC_EXEC( QBUFFER_BUFFER1 );
}

/*
const QByteArray & data () const
*/
HB_FUNC_STATIC( QBUFFER_DATA )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QByteArray * ptr = &obj->data ();
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
void setBuffer ( QByteArray * byteArray )
*/
HB_FUNC_STATIC( QBUFFER_SETBUFFER )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBuffer ( PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setData ( const QByteArray & data )
*/
HB_FUNC_STATIC( QBUFFER_SETDATA1 )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setData ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setData ( const char * data, int size )
*/
HB_FUNC_STATIC( QBUFFER_SETDATA2 )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setData ( (const char *) hb_parc(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setData ( const QByteArray & data )
//[2]void setData ( const char * data, int size )

HB_FUNC_STATIC( QBUFFER_SETDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBUFFER_SETDATA1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBUFFER_SETDATA2 );
  }
}

/*
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QBUFFER_ATEND )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->atEnd () );
  }
}


/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QBUFFER_CANREADLINE )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canReadLine () );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QBUFFER_CLOSE )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool open ( OpenMode flags )
*/
HB_FUNC_STATIC( QBUFFER_OPEN )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->open ( (QBuffer::OpenMode) hb_parni(1) ) );
  }
}


/*
virtual qint64 pos () const
*/
HB_FUNC_STATIC( QBUFFER_POS )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->pos () );
  }
}


/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC_STATIC( QBUFFER_SEEK )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->seek ( PQINT64(1) ) );
  }
}


/*
virtual qint64 size () const
*/
HB_FUNC_STATIC( QBUFFER_SIZE )
{
  QBuffer * obj = (QBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->size () );
  }
}





#pragma ENDDUMP
