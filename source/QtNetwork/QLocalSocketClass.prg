/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QLocalSocket INHERIT QIODevice

   DATA class_id INIT Class_Id_QLocalSocket
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD abort
   METHOD connectToServer
   METHOD disconnectFromServer
   METHOD error
   METHOD flush
   METHOD fullServerName
   METHOD isValid
   METHOD readBufferSize
   METHOD serverName
   METHOD setReadBufferSize
   METHOD state
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLocalSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QLocalSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QLocalSocket ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_NEW )
{
  QLocalSocket * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QLocalSocket ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QLOCALSOCKET_DELETE )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void abort ()
*/
HB_FUNC_STATIC( QLOCALSOCKET_ABORT )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->abort (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void connectToServer ( const QString & name, OpenMode openMode = ReadWrite )
*/
HB_FUNC_STATIC( QLOCALSOCKET_CONNECTTOSERVER )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QLocalSocket::ReadWrite : hb_parni(2);
    obj->connectToServer ( PQSTRING(1),  (QLocalSocket::OpenMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void disconnectFromServer ()
*/
HB_FUNC_STATIC( QLOCALSOCKET_DISCONNECTFROMSERVER )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->disconnectFromServer (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
LocalSocketError error () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_ERROR )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error (  ) );
  }
}


/*
bool flush ()
*/
HB_FUNC_STATIC( QLOCALSOCKET_FLUSH )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->flush (  ) );
  }
}


/*
QString fullServerName () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_FULLSERVERNAME )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fullServerName (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_ISVALID )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
qint64 readBufferSize () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_READBUFFERSIZE )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->readBufferSize (  );
    hb_retni( i );
  }
}


/*
QString serverName () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_SERVERNAME )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->serverName (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
void setReadBufferSize ( qint64 size )
*/
HB_FUNC_STATIC( QLOCALSOCKET_SETREADBUFFERSIZE )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    obj->setReadBufferSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
LocalSocketState state () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_STATE )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state (  ) );
  }
}


/*
bool waitForConnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_WAITFORCONNECTED )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->waitForConnected ( OPINT(1,30000) ) );
  }
}


/*
bool waitForDisconnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_WAITFORDISCONNECTED )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->waitForDisconnected ( OPINT(1,30000) ) );
  }
}


/*
virtual qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_BYTESAVAILABLE )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->bytesAvailable (  );
    hb_retni( i );
  }
}


/*
virtual qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_BYTESTOWRITE )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->bytesToWrite (  );
    hb_retni( i );
  }
}


/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_CANREADLINE )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->canReadLine (  ) );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QLOCALSOCKET_CLOSE )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_ISSEQUENTIAL )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSequential (  ) );
  }
}


/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_WAITFORBYTESWRITTEN )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->waitForBytesWritten ( OPINT(1,30000) ) );
  }
}


/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_WAITFORREADYREAD )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->waitForReadyRead ( OPINT(1,30000) ) );
  }
}






#pragma ENDDUMP
