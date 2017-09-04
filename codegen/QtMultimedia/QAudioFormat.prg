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

PROCEDURE destroyObject () CLASS QAudioFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAudioFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAudioFormat ()
*/
HB_FUNC_STATIC( QAUDIOFORMAT_NEW1 )
{
  QAudioFormat * o = new QAudioFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QAudioFormat ( const QAudioFormat & other )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_NEW2 )
{
  QAudioFormat * o = new QAudioFormat ( *PQAUDIOFORMAT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


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

HB_FUNC_STATIC( QAUDIOFORMAT_DELETE )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isValid () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_ISVALID )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
void setFrequency(int frequency)
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETFREQUENCY )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFrequency ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int frequency() const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_FREQUENCY )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->frequency () );
  }
}


/*
void setSampleRate ( int samplerate )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETSAMPLERATE )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSampleRate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int sampleRate () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SAMPLERATE )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->sampleRate () );
  }
}


/*
void setChannels(int channels)
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETCHANNELS )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setChannels ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int channels() const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_CHANNELS )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->channels () );
  }
}


/*
void setChannelCount(int channelCount)
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETCHANNELCOUNT )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setChannelCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int channelCount() const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_CHANNELCOUNT )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->channelCount () );
  }
}


/*
void setSampleSize ( int sampleSize )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETSAMPLESIZE )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSampleSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int sampleSize () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SAMPLESIZE )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->sampleSize () );
  }
}


/*
void setCodec ( const QString & codec )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETCODEC )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCodec ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString codec () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_CODEC )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->codec () );
  }
}


/*
void setByteOrder ( QAudioFormat::Endian byteOrder )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETBYTEORDER )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setByteOrder ( (QAudioFormat::Endian) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAudioFormat::Endian byteOrder () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_BYTEORDER )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->byteOrder () );
  }
}


/*
QAudioFormat::SampleType sampleType () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SAMPLETYPE )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->sampleType () );
  }
}


/*
void setSampleType ( QAudioFormat::SampleType sampleType )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETSAMPLETYPE )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSampleType ( (QAudioFormat::SampleType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
