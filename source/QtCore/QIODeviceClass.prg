/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY

CLASS QIODevice INHERIT QObject

   DATA class_id INIT Class_Id_QIODevice
   DATA class_flags INIT 8
   DATA self_destruction INIT .f.

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

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QIODevice>

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



//[1]QIODevice ()
//[2]QIODevice ( QObject * parent )

//HB_FUNC( QIODEVICE_NEW )
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

HB_FUNC( QIODEVICE_DELETE )
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
HB_FUNC( QIODEVICE_ATEND )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->atEnd (  );
    hb_retl( b );
  }
}


/*
virtual qint64 bytesAvailable () const
*/
HB_FUNC( QIODEVICE_BYTESAVAILABLE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->bytesAvailable (  );
    hb_retni( i );
  }
}


/*
virtual qint64 bytesToWrite () const
*/
HB_FUNC( QIODEVICE_BYTESTOWRITE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->bytesToWrite (  );
    hb_retni( i );
  }
}


/*
virtual bool canReadLine () const
*/
HB_FUNC( QIODEVICE_CANREADLINE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->canReadLine (  );
    hb_retl( b );
  }
}


/*
virtual void close ()
*/
HB_FUNC( QIODEVICE_CLOSE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString errorString () const
*/
HB_FUNC( QIODEVICE_ERRORSTRING )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool getChar ( char * c )
*/
HB_FUNC( QIODEVICE_GETCHAR )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->getChar ( par1 );
    hb_retl( b );
  }
}


/*
bool isOpen () const
*/
HB_FUNC( QIODEVICE_ISOPEN )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isOpen (  );
    hb_retl( b );
  }
}


/*
bool isReadable () const
*/
HB_FUNC( QIODEVICE_ISREADABLE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isReadable (  );
    hb_retl( b );
  }
}


/*
virtual bool isSequential () const
*/
HB_FUNC( QIODEVICE_ISSEQUENTIAL )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isSequential (  );
    hb_retl( b );
  }
}


/*
bool isTextModeEnabled () const
*/
HB_FUNC( QIODEVICE_ISTEXTMODEENABLED )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isTextModeEnabled (  );
    hb_retl( b );
  }
}


/*
bool isWritable () const
*/
HB_FUNC( QIODEVICE_ISWRITABLE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isWritable (  );
    hb_retl( b );
  }
}


/*
virtual bool open ( OpenMode mode )
*/
HB_FUNC( QIODEVICE_OPEN )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->open (  (QIODevice::OpenMode) par1 );
    hb_retl( b );
  }
}


/*
OpenMode openMode () const
*/
HB_FUNC( QIODEVICE_OPENMODE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->openMode (  );
    hb_retni( i );
  }
}


/*
qint64 peek ( char * data, qint64 maxSize )
*/
HB_FUNC( QIODEVICE_PEEK1 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qint64 par2 = hb_parni(2);
    qint64 i = obj->peek ( par1, par2 );
    hb_retni( i );
  }
}


/*
QByteArray peek ( qint64 maxSize )
*/
HB_FUNC( QIODEVICE_PEEK2 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->peek ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}


//[1]qint64 peek ( char * data, qint64 maxSize )
//[2]QByteArray peek ( qint64 maxSize )

HB_FUNC( QIODEVICE_PEEK )
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
HB_FUNC( QIODEVICE_POS )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->pos (  );
    hb_retni( i );
  }
}


/*
bool putChar ( char c )
*/
HB_FUNC( QIODEVICE_PUTCHAR )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    bool b = obj->putChar ( par1 );
    hb_retl( b );
  }
}


/*
qint64 read ( char * data, qint64 maxSize )
*/
HB_FUNC( QIODEVICE_READ1 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qint64 par2 = hb_parni(2);
    qint64 i = obj->read ( par1, par2 );
    hb_retni( i );
  }
}


/*
QByteArray read ( qint64 maxSize )
*/
HB_FUNC( QIODEVICE_READ2 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->read ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}


//[1]qint64 read ( char * data, qint64 maxSize )
//[2]QByteArray read ( qint64 maxSize )

HB_FUNC( QIODEVICE_READ )
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
HB_FUNC( QIODEVICE_READALL )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAll (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}


/*
qint64 readLine ( char * data, qint64 maxSize )
*/
HB_FUNC( QIODEVICE_READLINE1 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qint64 par2 = hb_parni(2);
    qint64 i = obj->readLine ( par1, par2 );
    hb_retni( i );
  }
}


/*
QByteArray readLine ( qint64 maxSize = 0 )
*/
HB_FUNC( QIODEVICE_READLINE2 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->readLine ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}


//[1]qint64 readLine ( char * data, qint64 maxSize )
//[2]QByteArray readLine ( qint64 maxSize = 0 )

HB_FUNC( QIODEVICE_READLINE )
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
HB_FUNC( QIODEVICE_RESET )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->reset (  );
    hb_retl( b );
  }
}


/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC( QIODEVICE_SEEK )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    bool b = obj->seek ( par1 );
    hb_retl( b );
  }
}


/*
void setTextModeEnabled ( bool enabled )
*/
HB_FUNC( QIODEVICE_SETTEXTMODEENABLED )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setTextModeEnabled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual qint64 size () const
*/
HB_FUNC( QIODEVICE_SIZE )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->size (  );
    hb_retni( i );
  }
}


/*
void ungetChar ( char c )
*/
HB_FUNC( QIODEVICE_UNGETCHAR )
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
HB_FUNC( QIODEVICE_WAITFORBYTESWRITTEN )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->waitForBytesWritten ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool waitForReadyRead ( int msecs )
*/
HB_FUNC( QIODEVICE_WAITFORREADYREAD )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->waitForReadyRead ( par1 );
    hb_retl( b );
  }
}


/*
qint64 write ( const char * data, qint64 maxSize )
*/
HB_FUNC( QIODEVICE_WRITE1 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    qint64 par2 = hb_parni(2);
    qint64 i = obj->write (  (const char *) par1, par2 );
    hb_retni( i );
  }
}


/*
qint64 write ( const char * data )
*/
HB_FUNC( QIODEVICE_WRITE2 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    qint64 i = obj->write (  (const char *) par1 );
    hb_retni( i );
  }
}


/*
qint64 write ( const QByteArray & byteArray )
*/
HB_FUNC( QIODEVICE_WRITE3 )
{
  QIODevice * obj = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qint64 i = obj->write ( *par1 );
    hb_retni( i );
  }
}


//[1]qint64 write ( const char * data, qint64 maxSize )
//[2]qint64 write ( const char * data )
//[3]qint64 write ( const QByteArray & byteArray )

HB_FUNC( QIODEVICE_WRITE )
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
