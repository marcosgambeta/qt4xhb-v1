/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QIODEVICE
#endif

CLASS QAudioOutput INHERIT QObject

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
   METHOD start
   METHOD state
   METHOD stop
   METHOD suspend

   METHOD onNotify
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAudioOutput
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtMultimedia/QAudioOutput>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC( QAUDIOOUTPUT_NEW )
{
  if( ISBETWEEN(0, 2) && (ISQAUDIOFORMAT(1) || HB_ISNIL(1)) && (ISQOBJECT(2) || HB_ISNIL(2)) )
  {
    /*
    QAudioOutput( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
    */
    QAudioOutput * obj = new QAudioOutput( HB_ISNIL(1) ? QAudioFormat() : *static_cast<QAudioFormat*>( Qt4xHb::itemGetPtr(1) ), OPQOBJECT( 2, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(1, 3) && ISQAUDIODEVICEINFO(1) && (ISQAUDIOFORMAT(2) || HB_ISNIL(2)) && (ISQOBJECT(3) || HB_ISNIL(3)) )
  {
    /*
    QAudioOutput( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
    */
    QAudioOutput * obj = new QAudioOutput( *PQAUDIODEVICEINFO(1), HB_ISNIL(2) ? QAudioFormat() : *static_cast<QAudioFormat*>( Qt4xHb::itemGetPtr(2) ), OPQOBJECT( 3, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QAUDIOOUTPUT_DELETE )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int bufferSize() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_BUFFERSIZE )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->bufferSize() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int bytesFree() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_BYTESFREE )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->bytesFree() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qint64 elapsedUSecs() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_ELAPSEDUSECS )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->elapsedUSecs() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAudio::Error error() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_ERROR )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAudioFormat format() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_FORMAT )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAudioFormat * ptr = new QAudioFormat( obj->format() );
      Qt4xHb::createReturnClass(ptr, "QAUDIOFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int notifyInterval() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_NOTIFYINTERVAL )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->notifyInterval() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int periodSize() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_PERIODSIZE )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->periodSize() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qint64 processedUSecs() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_PROCESSEDUSECS )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->processedUSecs() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void reset()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_RESET )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reset();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void resume()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_RESUME )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->resume();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setBufferSize( int value )
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_SETBUFFERSIZE )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setBufferSize( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setNotifyInterval( int ms )
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_SETNOTIFYINTERVAL )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setNotifyInterval( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QAUDIOOUTPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    /*
    void start( QIODevice * device )
    */
    QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->start( PQIODEVICE(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(0) )
  {
    /*
    QIODevice * start()
    */
    QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QIODevice * ptr = obj->start();
      Qt4xHb::createReturnQObjectClass(ptr, "QIODEVICE");
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAudio::State state() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_STATE )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void stop()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_STOP )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void suspend()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_SUSPEND )
{
  QAudioOutput * obj = qobject_cast<QAudioOutput*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->suspend();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QAudioOutputSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QAUDIOOUTPUT_ONNOTIFY )
{
  QAudioOutputSlots_connect_signal("notify()", "notify()");
}

HB_FUNC_STATIC( QAUDIOOUTPUT_ONSTATECHANGED )
{
  QAudioOutputSlots_connect_signal("stateChanged(QAudio::State)", "stateChanged(QAudio::State)");
}

#pragma ENDDUMP
