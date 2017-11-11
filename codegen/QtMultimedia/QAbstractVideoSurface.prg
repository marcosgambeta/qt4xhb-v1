$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVIDEOSURFACEFORMAT
#endif

CLASS QAbstractVideoSurface INHERIT QObject

   METHOD delete
   METHOD error
   METHOD isActive
   METHOD isFormatSupported
   METHOD nearestFormat
   METHOD present
   METHOD start
   METHOD stop
   METHOD supportedPixelFormats
   METHOD surfaceFormat

   METHOD onActiveChanged
   METHOD onSurfaceFormatChanged
   METHOD onSupportedFormatsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractVideoSurface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVideoSurfaceFormat>

$deleteMethod

/*
Error error () const
*/
$method=|QAbstractVideoSurface::Error|error|

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
virtual bool isFormatSupported ( const QVideoSurfaceFormat & format ) const
*/
$virtualMethod=|bool|isFormatSupported|const QVideoSurfaceFormat &

/*
virtual QVideoSurfaceFormat nearestFormat ( const QVideoSurfaceFormat & format ) const
*/
$virtualMethod=|QVideoSurfaceFormat|nearestFormat|const QVideoSurfaceFormat &

/*
virtual bool present ( const QVideoFrame & frame ) = 0
*/
$virtualMethod=|bool|present|const QVideoFrame &

/*
virtual bool start ( const QVideoSurfaceFormat & format )
*/
$virtualMethod=|bool|start|const QVideoSurfaceFormat &

/*
virtual void stop ()
*/
$virtualMethod=|void|stop|

/*
virtual QList<QVideoFrame::PixelFormat> supportedPixelFormats ( QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_SUPPORTEDPIXELFORMATS )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QVideoFrame::PixelFormat> list = obj->supportedPixelFormats ( ISNIL(1)? QAbstractVideoBuffer::NoHandle : (QAbstractVideoBuffer::HandleType) hb_parni(1) );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
QVideoSurfaceFormat surfaceFormat () const
*/
$method=|QVideoSurfaceFormat|surfaceFormat|

#pragma ENDDUMP
