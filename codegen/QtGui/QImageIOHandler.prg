$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QIODEVICE
REQUEST QBYTEARRAY
REQUEST QVARIANT
#endif

CLASS QImageIOHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD canRead
   METHOD currentImageNumber
   METHOD currentImageRect
   METHOD device
   METHOD format
   METHOD imageCount
   METHOD jumpToImage
   METHOD jumpToNextImage
   METHOD loopCount
   METHOD nextImageDelay
   METHOD option
   METHOD read
   METHOD setDevice
   METHOD setFormat
   METHOD setOption
   METHOD supportsOption
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QImageIOHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QImageIOHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QRect>
#include <QVariant>

HB_FUNC_STATIC( QIMAGEIOHANDLER_DELETE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual bool canRead () const = 0
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_CANREAD )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canRead () );
  }
}

/*
virtual int currentImageNumber () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_CURRENTIMAGENUMBER )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentImageNumber () );
  }
}

/*
virtual QRect currentImageRect () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_CURRENTIMAGERECT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->currentImageRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QIODevice * device () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_DEVICE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

/*
QByteArray format () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_FORMAT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
virtual int imageCount () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_IMAGECOUNT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->imageCount () );
  }
}

/*
virtual bool jumpToImage ( int imageNumber )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_JUMPTOIMAGE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->jumpToImage ( PINT(1) ) );
  }
}

/*
virtual bool jumpToNextImage ()
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_JUMPTONEXTIMAGE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->jumpToNextImage () );
  }
}

/*
virtual int loopCount () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_LOOPCOUNT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->loopCount () );
  }
}

/*
virtual int nextImageDelay () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_NEXTIMAGEDELAY )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->nextImageDelay () );
  }
}

/*
virtual QVariant option ( ImageOption option ) const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_OPTION )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->option ( (QImageIOHandler::ImageOption) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
virtual bool read ( QImage * image ) = 0
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_READ )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->read ( par1 ) );
  }
}

/*
void setDevice ( QIODevice * device )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_SETDEVICE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDevice ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFormat ( const QByteArray & format )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_SETFORMAT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFormat ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setOption ( ImageOption option, const QVariant & value )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_SETOPTION )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption ( (QImageIOHandler::ImageOption) par1, *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool supportsOption ( ImageOption option ) const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_SUPPORTSOPTION )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->supportsOption ( (QImageIOHandler::ImageOption) par1 ) );
  }
}

/*
virtual bool write ( const QImage & image )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_WRITE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->write ( *PQIMAGE(1) ) );
  }
}

$extraMethods

#pragma ENDDUMP
