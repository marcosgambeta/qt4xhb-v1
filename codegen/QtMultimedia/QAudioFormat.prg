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

$deleteMethod

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=void setFrequency(int frequency)
$method=|void|setFrequency|int

$prototype=int frequency() const
$method=|int|frequency|

$prototype=void setSampleRate ( int samplerate )
$method=|void|setSampleRate|int

$prototype=int sampleRate () const
$method=|int|sampleRate|

$prototype=void setChannels(int channels)
$method=|void|setChannels|int

$prototype=int channels() const
$method=|int|channels|

$prototype=void setChannelCount(int channelCount)
$method=|void|setChannelCount|int

$prototype=int channelCount() const
$method=|int|channelCount|

$prototype=void setSampleSize ( int sampleSize )
$method=|void|setSampleSize|int

$prototype=int sampleSize () const
$method=|int|sampleSize|

$prototype=void setCodec ( const QString & codec )
$method=|void|setCodec|const QString &

$prototype=QString codec () const
$method=|QString|codec|

$prototype=void setByteOrder ( QAudioFormat::Endian byteOrder )
$method=|void|setByteOrder|QAudioFormat::Endian

$prototype=QAudioFormat::Endian byteOrder () const
$method=|QAudioFormat::Endian|byteOrder|

$prototype=QAudioFormat::SampleType sampleType () const
$method=|QAudioFormat::SampleType|sampleType|

$prototype=void setSampleType ( QAudioFormat::SampleType sampleType )
$method=|void|setSampleType|QAudioFormat::SampleType

$extraMethods

#pragma ENDDUMP
