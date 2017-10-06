$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QBuffer INHERIT QIODevice

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
$constructor=|new1|QObject *=0

/*
QBuffer ( QByteArray * byteArray, QObject * parent = 0 )
*/
$constructor=|new2|QByteArray *,QObject *=0

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
$method=|QByteArray &|buffer,buffer1|

/*
const QByteArray & buffer () const
*/
$method=|const QByteArray &|buffer,buffer2|

//[1]QByteArray & buffer ()
//[2]const QByteArray & buffer () const

HB_FUNC_STATIC( QBUFFER_BUFFER )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBUFFER_BUFFER1 );
  }  
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

}

/*
const QByteArray & data () const
*/
$method=|const QByteArray &|data|

/*
void setBuffer ( QByteArray * byteArray )
*/
$method=|void|setBuffer|QByteArray *

/*
void setData ( const QByteArray & data )
*/
$method=|void|setData,setData1|const QByteArray &

/*
void setData ( const char * data, int size )
*/
$method=|void|setData,setData2|const char *,int

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool atEnd () const
*/
$virtualMethod=|bool|atEnd|

/*
virtual bool canReadLine () const
*/
$virtualMethod=|bool|canReadLine|

/*
virtual void close ()
*/
$virtualMethod=|void|close|

/*
virtual bool open ( OpenMode flags )
*/
$virtualMethod=|bool|open|QBuffer::OpenMode

/*
virtual qint64 pos () const
*/
$virtualMethod=|qint64|pos|

/*
virtual bool seek ( qint64 pos )
*/
$virtualMethod=|bool|seek|qint64

/*
virtual qint64 size () const
*/
$virtualMethod=|qint64|size|

#pragma ENDDUMP
