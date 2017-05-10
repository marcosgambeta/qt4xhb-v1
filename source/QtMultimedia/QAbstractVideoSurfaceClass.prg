/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVIDEOSURFACEFORMAT
#endif

CLASS QAbstractVideoSurface INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractVideoSurface
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QAbstractVideoSurface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractVideoSurface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVideoSurfaceFormat>


HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_DELETE )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Error error () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ERROR )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error (  ) );
  }
}


/*
bool isActive () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ISACTIVE )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
}


/*
virtual bool isFormatSupported ( const QVideoSurfaceFormat & format ) const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ISFORMATSUPPORTED )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVideoSurfaceFormat * par1 = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isFormatSupported ( *par1 ) );
  }
}


/*
virtual QVideoSurfaceFormat nearestFormat ( const QVideoSurfaceFormat & format ) const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_NEARESTFORMAT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVideoSurfaceFormat * par1 = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVideoSurfaceFormat * ptr = new QVideoSurfaceFormat( obj->nearestFormat ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVIDEOSURFACEFORMAT", true );
  }
}


/*
virtual bool present ( const QVideoFrame & frame ) = 0
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_PRESENT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVideoFrame * par1 = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->present ( *par1 ) );
  }
}


/*
virtual bool start ( const QVideoSurfaceFormat & format )
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_START )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVideoSurfaceFormat * par1 = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->start ( *par1 ) );
  }
}


/*
virtual void stop ()
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_STOP )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QList<QVideoFrame::PixelFormat> supportedPixelFormats ( QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_SUPPORTEDPIXELFORMATS )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QVideoFrame::PixelFormat> list = obj->supportedPixelFormats ( ISNIL(1)? QAbstractVideoBuffer::NoHandle : (QAbstractVideoBuffer::HandleType) hb_parni(1) );
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
QVideoSurfaceFormat surfaceFormat () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_SURFACEFORMAT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVideoSurfaceFormat * ptr = new QVideoSurfaceFormat( obj->surfaceFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVIDEOSURFACEFORMAT", true );
  }
}






#pragma ENDDUMP
