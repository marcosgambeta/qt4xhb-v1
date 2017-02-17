/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECT
REQUEST QIODEVICE
REQUEST QBYTEARRAY
REQUEST QVARIANT

CLASS QImageIOHandler

   DATA pointer
   DATA class_id INIT Class_Id_QImageIOHandler
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QImageIOHandler
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QImageIOHandler
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QImageIOHandler
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QImageIOHandler
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QImageIOHandler
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QImageIOHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QImageIOHandler>

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
    hb_retl( obj->canRead (  ) );
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
    hb_retni( obj->currentImageNumber (  ) );
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
    QRect * ptr = new QRect( obj->currentImageRect (  ) );
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
    QIODevice * ptr = obj->device (  );
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
    QByteArray * ptr = new QByteArray( obj->format (  ) );
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
    hb_retni( obj->imageCount (  ) );
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
    int par1 = hb_parni(1);
    hb_retl( obj->jumpToImage ( par1 ) );
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
    hb_retl( obj->jumpToNextImage (  ) );
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
    hb_retni( obj->loopCount (  ) );
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
    hb_retni( obj->nextImageDelay (  ) );
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
    QVariant * ptr = new QVariant( obj->option (  (QImageIOHandler::ImageOption) par1 ) );
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
    hb_retl( obj->read ( par1 ) );
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
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDevice ( par1 );
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
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFormat ( *par1 );
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
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setOption (  (QImageIOHandler::ImageOption) par1, *par2 );
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
    hb_retl( obj->supportsOption (  (QImageIOHandler::ImageOption) par1 ) );
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
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->write ( *par1 ) );
  }
}




#pragma ENDDUMP
