%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QAUDIODEVICEINFO
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD deviceName
   METHOD isFormatSupported
   METHOD isNull
   METHOD nearestFormat
   METHOD preferredFormat
   METHOD supportedFrequencies
   METHOD supportedSampleRates
   METHOD supportedChannels
   METHOD supportedChannelCounts
   METHOD supportedSampleSizes
   METHOD supportedByteOrders
   METHOD supportedSampleTypes
   METHOD supportedCodecs
   METHOD availableDevices
   METHOD defaultInputDevice
   METHOD defaultOutputDevice

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioDeviceInfo ()
$internalConstructor=|new1|

$prototype=QAudioDeviceInfo ( const QAudioDeviceInfo & other )
$internalConstructor=|new2|const QAudioDeviceInfo &

//[1]QAudioDeviceInfo ()
//[2]QAudioDeviceInfo ( const QAudioDeviceInfo & other )

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

$deleteMethod

$prototype=QString deviceName () const
$method=|QString|deviceName|

$prototype=bool isFormatSupported ( const QAudioFormat & settings ) const
$method=|bool|isFormatSupported|const QAudioFormat &

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QAudioFormat nearestFormat ( const QAudioFormat & settings ) const
$method=|QAudioFormat|nearestFormat|const QAudioFormat &

$prototype=QAudioFormat preferredFormat () const
$method=|QAudioFormat|preferredFormat|

$prototype=QList<int> supportedFrequencies() const
$method=|QList<int>|supportedFrequencies|

$prototype=QList<int> supportedSampleRates () const
$method=|QList<int>|supportedSampleRates|

$prototype=QList<int> supportedChannels() const
$method=|QList<int>|supportedChannels|

$prototype=QList<int> supportedChannelCounts () const
$method=|QList<int>|supportedChannelCounts|

$prototype=QList<int> supportedSampleSizes () const
$method=|QList<int>|supportedSampleSizes|

$prototype=QList<QAudioFormat::Endian> supportedByteOrders () const
$method=|QList<QAudioFormat::Endian>|supportedByteOrders|

$prototype=QList<QAudioFormat::SampleType> supportedSampleTypes () const
$method=|QList<QAudioFormat::SampleType>|supportedSampleTypes|

$prototype=QStringList supportedCodecs () const
$method=|QStringList|supportedCodecs|

$prototype=static QList<QAudioDeviceInfo> availableDevices ( QAudio::Mode mode )
$staticMethod=|QList<QAudioDeviceInfo>|availableDevices|QAudio::Mode

$prototype=static QAudioDeviceInfo defaultInputDevice ()
$staticMethod=|QAudioDeviceInfo|defaultInputDevice|

$prototype=static QAudioDeviceInfo defaultOutputDevice ()
$staticMethod=|QAudioDeviceInfo|defaultOutputDevice|

$extraMethods

#pragma ENDDUMP
