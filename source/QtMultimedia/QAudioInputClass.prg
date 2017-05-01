/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QIODEVICE
#endif

CLASS QAudioInput INHERIT QObject

   DATA class_id INIT Class_Id_QAudioInput
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bufferSize
   METHOD bytesReady
   METHOD elapsedUSecs
   METHOD error
   METHOD format
   METHOD notifyInterval
   METHOD periodSize
   METHOD processedUSecs
   METHOD reset
   METHOD resume
   METHOD setBufferSize
   METHOD setNotifyInterval
   METHOD start1
   METHOD start2
   METHOD start
   METHOD state
   METHOD stop
   METHOD suspend
   METHOD onStateChanged
   METHOD onNotify
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioInput
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAudioInput>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QAudioInput ( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QAUDIOINPUT_NEW1 )
{
  QAudioInput * o = NULL;
  QAudioFormat par1 = ISNIL(1)? QAudioFormat() : *(QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QAudioInput ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioInput *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QAudioInput ( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QAUDIOINPUT_NEW2 )
{
  QAudioInput * o = NULL;
  QAudioDeviceInfo * par1 = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QAudioFormat par2 = ISNIL(2)? QAudioFormat() : *(QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par3 = ISNIL(3)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QAudioInput ( *par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioInput *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QAudioInput ( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
//[2]QAudioInput ( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )

HB_FUNC_STATIC( QAUDIOINPUT_NEW )
{
  if( ISBETWEEN(0,2) && (ISQAUDIOFORMAT(1)||ISNIL(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QAUDIOINPUT_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISQAUDIODEVICEINFO(1) && (ISQAUDIOFORMAT(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QAUDIOINPUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAUDIOINPUT_DELETE )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int bufferSize () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_BUFFERSIZE )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->bufferSize (  ) );
  }
}


/*
int bytesReady () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_BYTESREADY )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->bytesReady (  ) );
  }
}


/*
qint64 elapsedUSecs () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_ELAPSEDUSECS )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->elapsedUSecs (  );
    hb_retni( i );
  }
}


/*
QAudio::Error error () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_ERROR )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error (  ) );
  }
}


/*
QAudioFormat format () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_FORMAT )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
int notifyInterval () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_NOTIFYINTERVAL )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->notifyInterval (  ) );
  }
}


/*
int periodSize () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_PERIODSIZE )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->periodSize (  ) );
  }
}


/*
qint64 processedUSecs () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_PROCESSEDUSECS )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->processedUSecs (  );
    hb_retni( i );
  }
}


/*
void reset ()
*/
HB_FUNC_STATIC( QAUDIOINPUT_RESET )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resume ()
*/
HB_FUNC_STATIC( QAUDIOINPUT_RESUME )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resume (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBufferSize ( int value )
*/
HB_FUNC_STATIC( QAUDIOINPUT_SETBUFFERSIZE )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNotifyInterval ( int ms )
*/
HB_FUNC_STATIC( QAUDIOINPUT_SETNOTIFYINTERVAL )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNotifyInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start ( QIODevice * device )
*/
HB_FUNC_STATIC( QAUDIOINPUT_START1 )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->start ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QIODevice * start ()
*/
HB_FUNC_STATIC( QAUDIOINPUT_START2 )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->start (  );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


//[1]void start ( QIODevice * device )
//[2]QIODevice * start ()

HB_FUNC_STATIC( QAUDIOINPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QAUDIOINPUT_START1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOINPUT_START2 );
  }
}

/*
QAudio::State state () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_STATE )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state (  ) );
  }
}


/*
void stop ()
*/
HB_FUNC_STATIC( QAUDIOINPUT_STOP )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void suspend ()
*/
HB_FUNC_STATIC( QAUDIOINPUT_SUSPEND )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->suspend (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
