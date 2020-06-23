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

$prototype=QAudioDeviceInfo ()
$internalConstructor=|new1|

$prototype=QAudioDeviceInfo ( const QAudioDeviceInfo & other )
$internalConstructor=|new2|const QAudioDeviceInfo &

/*
[1]QAudioDeviceInfo ()
[2]QAudioDeviceInfo ( const QAudioDeviceInfo & other )
*/

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAudioDeviceInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQAUDIODEVICEINFO(1) )
  {
    QAudioDeviceInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QString deviceName() const

$prototypeV2=bool isFormatSupported( const QAudioFormat & settings ) const

$prototypeV2=bool isNull() const

$prototypeV2=QAudioFormat nearestFormat( const QAudioFormat & settings ) const

$prototypeV2=QAudioFormat preferredFormat() const

$prototypeV2=QList<int> supportedFrequencies() const

$prototypeV2=QList<int> supportedSampleRates() const

$prototypeV2=QList<int> supportedChannels() const

$prototypeV2=QList<int> supportedChannelCounts() const

$prototypeV2=QList<int> supportedSampleSizes() const

$prototypeV2=QList<QAudioFormat::Endian> supportedByteOrders() const

$prototypeV2=QList<QAudioFormat::SampleType> supportedSampleTypes() const

$prototypeV2=QStringList supportedCodecs() const

$prototypeV2=static QList<QAudioDeviceInfo> availableDevices( QAudio::Mode mode )

$prototypeV2=static QAudioDeviceInfo defaultInputDevice()

$prototypeV2=static QAudioDeviceInfo defaultOutputDevice()

$extraMethods

#pragma ENDDUMP
