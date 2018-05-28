%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioOutput ( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
$internalConstructor=|new1|const QAudioFormat &=QAudioFormat(),QObject *=0

$prototype=QAudioOutput ( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
$internalConstructor=|new2|const QAudioDeviceInfo &,const QAudioFormat &=QAudioFormat(),QObject *=0

//[1]QAudioOutput ( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
//[2]QAudioOutput ( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )

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

$deleteMethod

$prototype=int bufferSize () const
$method=|int|bufferSize|

$prototype=int bytesFree () const
$method=|int|bytesFree|

$prototype=qint64 elapsedUSecs () const
$method=|qint64|elapsedUSecs|

$prototype=QAudio::Error error () const
$method=|QAudio::Error|error|

$prototype=QAudioFormat format () const
$method=|QAudioFormat|format|

$prototype=int notifyInterval () const
$method=|int|notifyInterval|

$prototype=int periodSize () const
$method=|int|periodSize|

$prototype=qint64 processedUSecs () const
$method=|qint64|processedUSecs|

$prototype=void reset ()
$method=|void|reset|

$prototype=void resume ()
$method=|void|resume|

$prototype=void setBufferSize ( int value )
$method=|void|setBufferSize|int

$prototype=void setNotifyInterval ( int ms )
$method=|void|setNotifyInterval|int

$prototype=void start ( QIODevice * device )
$internalMethod=|void|start,start1|QIODevice *

$prototype=QIODevice * start ()
$internalMethod=|QIODevice *|start,start2|

//[1]void start ( QIODevice * device )
//[2]QIODevice * start ()

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

$prototype=QAudio::State state () const
$method=|QAudio::State|state|

$prototype=void stop ()
$method=|void|stop|

$prototype=void suspend ()
$method=|void|suspend|

$beginSignals
$signal=|notify()
$signal=|stateChanged(QAudio::State)
$endSignals

#pragma ENDDUMP
