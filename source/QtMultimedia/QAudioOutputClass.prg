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

CLASS QAudioOutput INHERIT QObject

   DATA class_id INIT Class_Id_QAudioOutput
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bufferSize
   METHOD bytesFree
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
   METHOD onNotify
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioOutput
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAudioOutput>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QAudioOutput ( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_NEW1 )
{
  QAudioOutput * o = NULL;
  QAudioFormat par1 = ISNIL(1)? QAudioFormat() : *(QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QAudioOutput ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioOutput *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QAudioOutput ( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_NEW2 )
{
  QAudioOutput * o = NULL;
  QAudioDeviceInfo * par1 = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QAudioFormat par2 = ISNIL(2)? QAudioFormat() : *(QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par3 = ISNIL(3)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QAudioOutput ( *par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioOutput *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QAudioOutput ( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
//[2]QAudioOutput ( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )

HB_FUNC_STATIC( QAUDIOOUTPUT_NEW )
{
  if( ISBETWEEN(0,2) && (ISQAUDIOFORMAT(1)||ISNIL(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QAUDIOOUTPUT_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISQAUDIODEVICEINFO(1) && (ISQAUDIOFORMAT(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QAUDIOOUTPUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAUDIOOUTPUT_DELETE )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QAUDIOOUTPUT_BUFFERSIZE )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->bufferSize (  ) );
  }
}


/*
int bytesFree () const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_BYTESFREE )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->bytesFree (  ) );
  }
}


/*
qint64 elapsedUSecs () const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_ELAPSEDUSECS )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->elapsedUSecs (  );
    hb_retni( i );
  }
}


/*
QAudio::Error error () const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_ERROR )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error (  ) );
  }
}


/*
QAudioFormat format () const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_FORMAT )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
int notifyInterval () const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_NOTIFYINTERVAL )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->notifyInterval (  ) );
  }
}


/*
int periodSize () const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_PERIODSIZE )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->periodSize (  ) );
  }
}


/*
qint64 processedUSecs () const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_PROCESSEDUSECS )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->processedUSecs (  );
    hb_retni( i );
  }
}


/*
void reset ()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_RESET )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resume ()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_RESUME )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resume (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBufferSize ( int value )
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_SETBUFFERSIZE )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNotifyInterval ( int ms )
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_SETNOTIFYINTERVAL )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNotifyInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start ( QIODevice * device )
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_START1 )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QAUDIOOUTPUT_START2 )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->start (  );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


//[1]void start ( QIODevice * device )
//[2]QIODevice * start ()

HB_FUNC_STATIC( QAUDIOOUTPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QAUDIOOUTPUT_START1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOOUTPUT_START2 );
  }
}

/*
QAudio::State state () const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_STATE )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state (  ) );
  }
}


/*
void stop ()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_STOP )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void suspend ()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_SUSPEND )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->suspend (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
