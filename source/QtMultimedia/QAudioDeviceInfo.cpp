/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAudioDeviceInfo>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QAudioDeviceInfo ()
*/
HB_FUNC( QAUDIODEVICEINFO_NEW1 )
{
  QAudioDeviceInfo * o = NULL;
  o = new QAudioDeviceInfo (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioDeviceInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QAudioDeviceInfo ( const QAudioDeviceInfo & other )
*/
HB_FUNC( QAUDIODEVICEINFO_NEW2 )
{
  QAudioDeviceInfo * o = NULL;
  QAudioDeviceInfo * par1 = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QAudioDeviceInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioDeviceInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QAudioDeviceInfo ()
//[2]QAudioDeviceInfo ( const QAudioDeviceInfo & other )

HB_FUNC( QAUDIODEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIODEVICEINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUDIODEVICEINFO(1) )
  {
    HB_FUNC_EXEC( QAUDIODEVICEINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QAUDIODEVICEINFO_DELETE )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString deviceName () const
*/
HB_FUNC( QAUDIODEVICEINFO_DEVICENAME )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->deviceName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool isFormatSupported ( const QAudioFormat & settings ) const
*/
HB_FUNC( QAUDIODEVICEINFO_ISFORMATSUPPORTED )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAudioFormat * par1 = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->isFormatSupported ( *par1 );
    hb_retl( b );
  }
}


/*
bool isNull () const
*/
HB_FUNC( QAUDIODEVICEINFO_ISNULL )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
QAudioFormat nearestFormat ( const QAudioFormat & settings ) const
*/
HB_FUNC( QAUDIODEVICEINFO_NEARESTFORMAT )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAudioFormat * par1 = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAudioFormat * ptr = new QAudioFormat( obj->nearestFormat ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );  }
}


/*
QAudioFormat preferredFormat () const
*/
HB_FUNC( QAUDIODEVICEINFO_PREFERREDFORMAT )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->preferredFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );  }
}


/*
QList<int> supportedFrequencies() const
*/
HB_FUNC( QAUDIODEVICEINFO_SUPPORTEDFREQUENCIES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<int> list = obj->supportedFrequencies (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<int> supportedSampleRates () const
*/
HB_FUNC( QAUDIODEVICEINFO_SUPPORTEDSAMPLERATES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<int> list = obj->supportedSampleRates (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<int> supportedChannels() const
*/
HB_FUNC( QAUDIODEVICEINFO_SUPPORTEDCHANNELS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<int> list = obj->supportedChannels (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<int> supportedChannelCounts () const
*/
HB_FUNC( QAUDIODEVICEINFO_SUPPORTEDCHANNELCOUNTS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<int> list = obj->supportedChannelCounts (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<int> supportedSampleSizes () const
*/
HB_FUNC( QAUDIODEVICEINFO_SUPPORTEDSAMPLESIZES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<int> list = obj->supportedSampleSizes (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<QAudioFormat::Endian> supportedByteOrders () const
*/
HB_FUNC( QAUDIODEVICEINFO_SUPPORTEDBYTEORDERS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QAudioFormat::Endian> list = obj->supportedByteOrders (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<QAudioFormat::SampleType> supportedSampleTypes () const
*/
HB_FUNC( QAUDIODEVICEINFO_SUPPORTEDSAMPLETYPES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QAudioFormat::SampleType> list = obj->supportedSampleTypes (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QStringList supportedCodecs () const
*/
HB_FUNC( QAUDIODEVICEINFO_SUPPORTEDCODECS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->supportedCodecs (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}



/*
QList<QAudioDeviceInfo> availableDevices ( QAudio::Mode mode )
*/
HB_FUNC( QAUDIODEVICEINFO_AVAILABLEDEVICES )
{
  int par1 = hb_parni(1);
  QList<QAudioDeviceInfo> list = QAudioDeviceInfo::availableDevices (  (QAudio::Mode) par1 );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QAUDIODEVICEINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QAUDIODEVICEINFO" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QAudioDeviceInfo *) new QAudioDeviceInfo ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
QAudioDeviceInfo defaultInputDevice ()
*/
HB_FUNC( QAUDIODEVICEINFO_DEFAULTINPUTDEVICE )
{
  QAudioDeviceInfo * ptr = new QAudioDeviceInfo( QAudioDeviceInfo::defaultInputDevice (  ) );
  _qt4xhb_createReturnClass ( ptr, "QAUDIODEVICEINFO" );}


/*
QAudioDeviceInfo defaultOutputDevice ()
*/
HB_FUNC( QAUDIODEVICEINFO_DEFAULTOUTPUTDEVICE )
{
  QAudioDeviceInfo * ptr = new QAudioDeviceInfo( QAudioDeviceInfo::defaultOutputDevice (  ) );
  _qt4xhb_createReturnClass ( ptr, "QAUDIODEVICEINFO" );}



