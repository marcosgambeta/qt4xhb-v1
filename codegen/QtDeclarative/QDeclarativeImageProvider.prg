$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPIXMAP
#endif

CLASS QDeclarativeImageProvider

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD imageType
   METHOD requestImage
   METHOD requestPixmap
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeImageProvider>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDeclarativeImageProvider ( ImageType type )
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_NEW )
{
  QDeclarativeImageProvider * o = new QDeclarativeImageProvider ( (QDeclarativeImageProvider::ImageType) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_DELETE )
{
  QDeclarativeImageProvider * obj = (QDeclarativeImageProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
ImageType imageType () const
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_IMAGETYPE )
{
  QDeclarativeImageProvider * obj = (QDeclarativeImageProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->imageType () );
  }
}


/*
virtual QImage requestImage ( const QString & id, QSize * size, const QSize & requestedSize )
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_REQUESTIMAGE )
{
  QDeclarativeImageProvider * obj = (QDeclarativeImageProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par2 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QImage * ptr = new QImage( obj->requestImage ( PQSTRING(1), par2, *PQSIZE(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
virtual QPixmap requestPixmap ( const QString & id, QSize * size, const QSize & requestedSize )
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_REQUESTPIXMAP )
{
  QDeclarativeImageProvider * obj = (QDeclarativeImageProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par2 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * ptr = new QPixmap( obj->requestPixmap ( PQSTRING(1), par2, *PQSIZE(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

$extraMethods

#pragma ENDDUMP
