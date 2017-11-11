$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QRECT
#endif

CLASS QVideoSurfaceFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD frameHeight
   METHOD frameRate
   METHOD frameSize
   METHOD frameWidth
   METHOD handleType
   METHOD isValid
   METHOD pixelAspectRatio
   METHOD pixelFormat
   METHOD property
   METHOD propertyNames
   METHOD scanLineDirection
   METHOD setFrameRate
   METHOD setFrameSize
   METHOD setPixelAspectRatio
   METHOD setProperty
   METHOD setScanLineDirection
   METHOD setViewport
   METHOD setYCbCrColorSpace
   METHOD sizeHint
   METHOD viewport
   METHOD yCbCrColorSpace

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QVideoSurfaceFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QVideoSurfaceFormat ()
*/
$internalConstructor=|new1|

/*
QVideoSurfaceFormat ( const QSize & size, QVideoFrame::PixelFormat format, QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle )
*/
$internalConstructor=|new2|const QSize &,QVideoFrame::PixelFormat,QAbstractVideoBuffer::HandleType=QAbstractVideoBuffer::NoHandle

/*
QVideoSurfaceFormat ( const QVideoSurfaceFormat & other )
*/
$internalConstructor=|new3|const QVideoSurfaceFormat &

//[1]QVideoSurfaceFormat ()
//[2]QVideoSurfaceFormat ( const QSize & size, QVideoFrame::PixelFormat format, QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle )
//[3]QVideoSurfaceFormat ( const QVideoSurfaceFormat & other )

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVideoSurfaceFormat_new1();
  }
  else if( ISBETWEEN(2,3) && ISQSIZE(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QVideoSurfaceFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1) )
  {
    QVideoSurfaceFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int frameHeight () const
*/
$method=|int|frameHeight|

/*
qreal frameRate () const
*/
$method=|qreal|frameRate|

/*
QSize frameSize () const
*/
$method=|QSize|frameSize|

/*
int frameWidth () const
*/
$method=|int|frameWidth|

/*
QAbstractVideoBuffer::HandleType handleType () const
*/
$method=|QAbstractVideoBuffer::HandleType|handleType|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QSize pixelAspectRatio () const
*/
$method=|QSize|pixelAspectRatio|

/*
QVideoFrame::PixelFormat pixelFormat () const
*/
$method=|QVideoFrame::PixelFormat|pixelFormat|

/*
QVariant property ( const char * name ) const
*/
$method=|QVariant|property|const char *

/*
QList<QByteArray> propertyNames () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_PROPERTYNAMES )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QByteArray> list = obj->propertyNames ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
Direction scanLineDirection () const
*/
$method=|QVideoSurfaceFormat::Direction|scanLineDirection|

/*
void setFrameRate ( qreal rate )
*/
$method=|void|setFrameRate|qreal

/*
void setFrameSize ( const QSize & size )
*/
$internalMethod=|void|setFrameSize,setFrameSize1|const QSize &

/*
void setFrameSize ( int width, int height )
*/
$internalMethod=|void|setFrameSize,setFrameSize2|int,int

//[1]void setFrameSize ( const QSize & size )
//[2]void setFrameSize ( int width, int height )

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETFRAMESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QVideoSurfaceFormat_setFrameSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVideoSurfaceFormat_setFrameSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPixelAspectRatio ( const QSize & ratio )
*/
$internalMethod=|void|setPixelAspectRatio,setPixelAspectRatio1|const QSize &

/*
void setPixelAspectRatio ( int horizontal, int vertical )
*/
$internalMethod=|void|setPixelAspectRatio,setPixelAspectRatio2|int,int

//[1]void setPixelAspectRatio ( const QSize & ratio )
//[2]void setPixelAspectRatio ( int horizontal, int vertical )

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QVideoSurfaceFormat_setPixelAspectRatio1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVideoSurfaceFormat_setPixelAspectRatio2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setProperty ( const char * name, const QVariant & value )
*/
$method=|void|setProperty|const char *,const QVariant &

/*
void setScanLineDirection ( Direction direction )
*/
$method=|void|setScanLineDirection|QVideoSurfaceFormat::Direction

/*
void setViewport ( const QRect & viewport )
*/
$method=|void|setViewport|const QRect &

/*
void setYCbCrColorSpace ( YCbCrColorSpace space )
*/
$method=|void|setYCbCrColorSpace|QVideoSurfaceFormat::YCbCrColorSpace

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
QRect viewport () const
*/
$method=|QRect|viewport|

/*
YCbCrColorSpace yCbCrColorSpace () const
*/
$method=|QVideoSurfaceFormat::YCbCrColorSpace|yCbCrColorSpace|

$extraMethods

#pragma ENDDUMP
