$header

#include "hbclass.ch"

CLASS QAudioFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setFrequency
   METHOD frequency
   METHOD setSampleRate
   METHOD sampleRate
   METHOD setChannels
   METHOD channels
   METHOD setChannelCount
   METHOD channelCount
   METHOD setSampleSize
   METHOD sampleSize
   METHOD setCodec
   METHOD codec
   METHOD setByteOrder
   METHOD byteOrder
   METHOD sampleType
   METHOD setSampleType

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAudioFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAudioFormat ()
*/
$constructor=|new1|

/*
QAudioFormat ( const QAudioFormat & other )
*/
$constructor=|new2|const QAudioFormat &

//[1]QAudioFormat ()
//[2]QAudioFormat ( const QAudioFormat & other )

HB_FUNC_STATIC( QAUDIOFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOFORMAT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
  {
    HB_FUNC_EXEC( QAUDIOFORMAT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
void setFrequency(int frequency)
*/
$method=|void|setFrequency|int

/*
int frequency() const
*/
$method=|int|frequency|

/*
void setSampleRate ( int samplerate )
*/
$method=|void|setSampleRate|int

/*
int sampleRate () const
*/
$method=|int|sampleRate|

/*
void setChannels(int channels)
*/
$method=|void|setChannels|int

/*
int channels() const
*/
$method=|int|channels|

/*
void setChannelCount(int channelCount)
*/
$method=|void|setChannelCount|int

/*
int channelCount() const
*/
$method=|int|channelCount|

/*
void setSampleSize ( int sampleSize )
*/
$method=|void|setSampleSize|int

/*
int sampleSize () const
*/
$method=|int|sampleSize|

/*
void setCodec ( const QString & codec )
*/
$method=|void|setCodec|const QString &

/*
QString codec () const
*/
$method=|QString|codec|

/*
void setByteOrder ( QAudioFormat::Endian byteOrder )
*/
$method=|void|setByteOrder|QAudioFormat::Endian

/*
QAudioFormat::Endian byteOrder () const
*/
$method=|QAudioFormat::Endian|byteOrder|

/*
QAudioFormat::SampleType sampleType () const
*/
$method=|QAudioFormat::SampleType|sampleType|

/*
void setSampleType ( QAudioFormat::SampleType sampleType )
*/
$method=|void|setSampleType|QAudioFormat::SampleType

$extraMethods

#pragma ENDDUMP
