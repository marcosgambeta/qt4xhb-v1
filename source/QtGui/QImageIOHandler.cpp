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


HB_FUNC( QIMAGEIOHANDLER_DELETE )
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
HB_FUNC( QIMAGEIOHANDLER_CANREAD )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->canRead (  );
    hb_retl( b );
  }
}


/*
virtual int currentImageNumber () const
*/
HB_FUNC( QIMAGEIOHANDLER_CURRENTIMAGENUMBER )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->currentImageNumber (  );
    hb_retni( i );
  }
}


/*
virtual QRect currentImageRect () const
*/
HB_FUNC( QIMAGEIOHANDLER_CURRENTIMAGERECT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->currentImageRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );  }
}


/*
QIODevice * device () const
*/
HB_FUNC( QIMAGEIOHANDLER_DEVICE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->device (  );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );  }
}


/*
QByteArray format () const
*/
HB_FUNC( QIMAGEIOHANDLER_FORMAT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}


/*
virtual int imageCount () const
*/
HB_FUNC( QIMAGEIOHANDLER_IMAGECOUNT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->imageCount (  );
    hb_retni( i );
  }
}


/*
virtual bool jumpToImage ( int imageNumber )
*/
HB_FUNC( QIMAGEIOHANDLER_JUMPTOIMAGE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->jumpToImage ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool jumpToNextImage ()
*/
HB_FUNC( QIMAGEIOHANDLER_JUMPTONEXTIMAGE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->jumpToNextImage (  );
    hb_retl( b );
  }
}


/*
virtual int loopCount () const
*/
HB_FUNC( QIMAGEIOHANDLER_LOOPCOUNT )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->loopCount (  );
    hb_retni( i );
  }
}


/*
virtual int nextImageDelay () const
*/
HB_FUNC( QIMAGEIOHANDLER_NEXTIMAGEDELAY )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->nextImageDelay (  );
    hb_retni( i );
  }
}


/*
virtual QVariant option ( ImageOption option ) const
*/
HB_FUNC( QIMAGEIOHANDLER_OPTION )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->option (  (QImageIOHandler::ImageOption) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
virtual bool read ( QImage * image ) = 0
*/
HB_FUNC( QIMAGEIOHANDLER_READ )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->read ( par1 );
    hb_retl( b );
  }
}


/*
void setDevice ( QIODevice * device )
*/
HB_FUNC( QIMAGEIOHANDLER_SETDEVICE )
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
HB_FUNC( QIMAGEIOHANDLER_SETFORMAT )
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
HB_FUNC( QIMAGEIOHANDLER_SETOPTION )
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
HB_FUNC( QIMAGEIOHANDLER_SUPPORTSOPTION )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->supportsOption (  (QImageIOHandler::ImageOption) par1 );
    hb_retl( b );
  }
}


/*
virtual bool write ( const QImage & image )
*/
HB_FUNC( QIMAGEIOHANDLER_WRITE )
{
  QImageIOHandler * obj = (QImageIOHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->write ( *par1 );
    hb_retl( b );
  }
}



