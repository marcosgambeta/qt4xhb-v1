/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QIODevice INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD errorString
   METHOD getChar
   METHOD isOpen
   METHOD isReadable
   METHOD isSequential
   METHOD isTextModeEnabled
   METHOD isWritable
   METHOD open
   METHOD openMode
   METHOD peek1
   METHOD peek2
   METHOD peek
   METHOD pos
   METHOD putChar
   METHOD read1
   METHOD read2
   METHOD read
   METHOD readAll
   METHOD readLine1
   METHOD readLine2
   METHOD readLine
   METHOD reset
   METHOD seek
   METHOD setTextModeEnabled
   METHOD size
   METHOD ungetChar
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD write1
   METHOD write2
   METHOD write3
   METHOD write
   METHOD onAboutToClose
   METHOD onBytesWritten
   METHOD onReadChannelFinished
   METHOD onReadyRead
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIODevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QIODevice>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"



//[1]QIODevice ()
//[2]QIODevice ( QObject * parent )

//HB_FUNC_STATIC( QIODEVICE_NEW )
//{
//  if( ISNUMPAR(0) )
//  {
//    HB_FUNC_EXEC( QIODEVICE_NEW1 );
//  }
//  else if( ISNUMPAR(1) && ISQOBJECT(1) )
//  {
//    HB_FUNC_EXEC( QIODEVICE_NEW2 );
//  }
//  else
//  {
//    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
//  }
//}

HB_FUNC_STATIC( QIODEVICE_DELETE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QIODEVICE_ATEND )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->atEnd () );
  }
}


/*
virtual qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QIODEVICE_BYTESAVAILABLE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->bytesAvailable () );
  }
}


/*
virtual qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QIODEVICE_BYTESTOWRITE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->bytesToWrite () );
  }
}


/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QIODEVICE_CANREADLINE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canReadLine () );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QIODEVICE_CLOSE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QIODEVICE_ERRORSTRING )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
bool getChar ( char * c )
*/
HB_FUNC_STATIC( QIODEVICE_GETCHAR )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->getChar ( par1 ) );
  }
}


/*
bool isOpen () const
*/
HB_FUNC_STATIC( QIODEVICE_ISOPEN )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isOpen () );
  }
}


/*
bool isReadable () const
*/
HB_FUNC_STATIC( QIODEVICE_ISREADABLE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isReadable () );
  }
}


/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QIODEVICE_ISSEQUENTIAL )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSequential () );
  }
}


/*
bool isTextModeEnabled () const
*/
HB_FUNC_STATIC( QIODEVICE_ISTEXTMODEENABLED )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isTextModeEnabled () );
  }
}


/*
bool isWritable () const
*/
HB_FUNC_STATIC( QIODEVICE_ISWRITABLE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isWritable () );
  }
}


/*
virtual bool open ( OpenMode mode )
*/
HB_FUNC_STATIC( QIODEVICE_OPEN )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->open ( (QIODevice::OpenMode) hb_parni(1) ) );
  }
}


/*
OpenMode openMode () const
*/
HB_FUNC_STATIC( QIODEVICE_OPENMODE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->openMode () );
  }
}


/*
qint64 peek ( char * data, qint64 maxSize )
*/
HB_FUNC_STATIC( QIODEVICE_PEEK1 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQINT64( obj->peek ( par1, PQINT64(2) ) );
  }
}


/*
QByteArray peek ( qint64 maxSize )
*/
HB_FUNC_STATIC( QIODEVICE_PEEK2 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->peek ( PQINT64(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[1]qint64 peek ( char * data, qint64 maxSize )
//[2]QByteArray peek ( qint64 maxSize )

HB_FUNC_STATIC( QIODEVICE_PEEK )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIODEVICE_PEEK1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_PEEK2 );
  }
}

/*
virtual qint64 pos () const
*/
HB_FUNC_STATIC( QIODEVICE_POS )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->pos () );
  }
}


/*
bool putChar ( char c )
*/
HB_FUNC_STATIC( QIODEVICE_PUTCHAR )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    RBOOL( obj->putChar ( par1 ) );
  }
}


/*
qint64 read ( char * data, qint64 maxSize )
*/
HB_FUNC_STATIC( QIODEVICE_READ1 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQINT64( obj->read ( par1, PQINT64(2) ) );
  }
}


/*
QByteArray read ( qint64 maxSize )
*/
HB_FUNC_STATIC( QIODEVICE_READ2 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->read ( PQINT64(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[1]qint64 read ( char * data, qint64 maxSize )
//[2]QByteArray read ( qint64 maxSize )

HB_FUNC_STATIC( QIODEVICE_READ )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIODEVICE_READ1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_READ2 );
  }
}

/*
QByteArray readAll ()
*/
HB_FUNC_STATIC( QIODEVICE_READALL )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAll () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
qint64 readLine ( char * data, qint64 maxSize )
*/
HB_FUNC_STATIC( QIODEVICE_READLINE1 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQINT64( obj->readLine ( par1, PQINT64(2) ) );
  }
}


/*
QByteArray readLine ( qint64 maxSize = 0 )
*/
HB_FUNC_STATIC( QIODEVICE_READLINE2 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readLine ( OPQINT64(1,0) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[1]qint64 readLine ( char * data, qint64 maxSize )
//[2]QByteArray readLine ( qint64 maxSize = 0 )

HB_FUNC_STATIC( QIODEVICE_READLINE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIODEVICE_READLINE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_READLINE2 );
  }
}

/*
virtual bool reset ()
*/
HB_FUNC_STATIC( QIODEVICE_RESET )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->reset () );
  }
}


/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC_STATIC( QIODEVICE_SEEK )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->seek ( PQINT64(1) ) );
  }
}


/*
void setTextModeEnabled ( bool enabled )
*/
HB_FUNC_STATIC( QIODEVICE_SETTEXTMODEENABLED )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextModeEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual qint64 size () const
*/
HB_FUNC_STATIC( QIODEVICE_SIZE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->size () );
  }
}


/*
void ungetChar ( char c )
*/
HB_FUNC_STATIC( QIODEVICE_UNGETCHAR )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    obj->ungetChar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool waitForBytesWritten ( int msecs )
*/
HB_FUNC_STATIC( QIODEVICE_WAITFORBYTESWRITTEN )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->waitForBytesWritten ( PINT(1) ) );
  }
}


/*
virtual bool waitForReadyRead ( int msecs )
*/
HB_FUNC_STATIC( QIODEVICE_WAITFORREADYREAD )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->waitForReadyRead ( PINT(1) ) );
  }
}


/*
qint64 write ( const char * data, qint64 maxSize )
*/
HB_FUNC_STATIC( QIODEVICE_WRITE1 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->write ( (const char *) hb_parc(1), PQINT64(2) ) );
  }
}


/*
qint64 write ( const char * data )
*/
HB_FUNC_STATIC( QIODEVICE_WRITE2 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->write ( (const char *) hb_parc(1) ) );
  }
}


/*
qint64 write ( const QByteArray & byteArray )
*/
HB_FUNC_STATIC( QIODEVICE_WRITE3 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->write ( *PQBYTEARRAY(1) ) );
  }
}


//[1]qint64 write ( const char * data, qint64 maxSize )
//[2]qint64 write ( const char * data )
//[3]qint64 write ( const QByteArray & byteArray )

HB_FUNC_STATIC( QIODEVICE_WRITE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIODEVICE_WRITE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_WRITE2 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_WRITE3 );
  }
}

//Signals




#pragma ENDDUMP
