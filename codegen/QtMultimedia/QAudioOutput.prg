%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioOutput ( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
$internalConstructor=|new1|const QAudioFormat &=QAudioFormat(),QObject *=0

$prototype=QAudioOutput ( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
$internalConstructor=|new2|const QAudioDeviceInfo &,const QAudioFormat &=QAudioFormat(),QObject *=0

/*
[1]QAudioOutput ( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
[2]QAudioOutput ( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
*/

HB_FUNC_STATIC( QAUDIOOUTPUT_NEW )
{
  if( ISBETWEEN(0,2) && (ISQAUDIOFORMAT(1)||ISNIL(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QAudioOutput_new1();
  }
  else if( ISBETWEEN(1,3) && ISQAUDIODEVICEINFO(1) && (ISQAUDIOFORMAT(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QAudioOutput_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=int bufferSize() const

$prototypeV2=int bytesFree() const

$prototypeV2=qint64 elapsedUSecs() const

$prototypeV2=QAudio::Error error() const

$prototypeV2=QAudioFormat format() const

$prototypeV2=int notifyInterval() const

$prototypeV2=int periodSize() const

$prototypeV2=qint64 processedUSecs() const

$prototypeV2=void reset()

$prototypeV2=void resume()

$prototype=void setBufferSize ( int value )
$method=|void|setBufferSize|int

$prototype=void setNotifyInterval ( int ms )
$method=|void|setNotifyInterval|int

$prototype=void start ( QIODevice * device )
$internalMethod=|void|start,start1|QIODevice *

$prototype=QIODevice * start ()
$internalMethod=|QIODevice *|start,start2|

/*
[1]void start ( QIODevice * device )
[2]QIODevice * start ()
*/

HB_FUNC_STATIC( QAUDIOOUTPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QAudioOutput_start1();
  }
  else if( ISNUMPAR(0) )
  {
    QAudioOutput_start2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=start

$prototypeV2=QAudio::State state() const

$prototypeV2=void stop()

$prototypeV2=void suspend()

$beginSignals
$signal=|notify()
$signal=|stateChanged(QAudio::State)
$endSignals

#pragma ENDDUMP
