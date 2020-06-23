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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioFormat ()
$internalConstructor=|new1|

$prototype=QAudioFormat ( const QAudioFormat & other )
$internalConstructor=|new2|const QAudioFormat &

/*
[1]QAudioFormat ()
[2]QAudioFormat ( const QAudioFormat & other )
*/

HB_FUNC_STATIC( QAUDIOFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAudioFormat_new1();
  }
  else if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
  {
    QAudioFormat_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=void setFrequency( int frequency )

$prototypeV2=int frequency() const

$prototypeV2=void setSampleRate( int samplerate )

$prototypeV2=int sampleRate() const

$prototypeV2=void setChannels( int channels )

$prototypeV2=int channels() const

$prototypeV2=void setChannelCount( int channelCount )

$prototypeV2=int channelCount() const

$prototypeV2=void setSampleSize( int sampleSize )

$prototypeV2=int sampleSize() const

$prototypeV2=void setCodec( const QString & codec )

$prototypeV2=QString codec() const

$prototypeV2=void setByteOrder( QAudioFormat::Endian byteOrder )

$prototypeV2=QAudioFormat::Endian byteOrder() const

$prototypeV2=QAudioFormat::SampleType sampleType() const

$prototypeV2=void setSampleType( QAudioFormat::SampleType sampleType )

$extraMethods

#pragma ENDDUMP
