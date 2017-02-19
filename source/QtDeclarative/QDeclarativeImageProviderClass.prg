/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QIMAGE
REQUEST QPIXMAP

CLASS QDeclarativeImageProvider

   DATA pointer
   DATA class_id INIT Class_Id_QDeclarativeImageProvider
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QDeclarativeImageProvider
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDeclarativeImageProvider
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDeclarativeImageProvider
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDeclarativeImageProvider
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDeclarativeImageProvider
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDeclarativeImageProvider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDeclarativeImageProvider>

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
QDeclarativeImageProvider ( ImageType type )
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_NEW )
{
  QDeclarativeImageProvider * o = NULL;
  o = new QDeclarativeImageProvider (  (QDeclarativeImageProvider::ImageType) hb_parni(1) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeImageProvider *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    hb_retni( (int) obj->imageType (  ) );
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
    QString par1 = hb_parc(1);
    QSize * par2 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * par3 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QImage * ptr = new QImage( obj->requestImage ( par1, par2, *par3 ) );
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
    QString par1 = hb_parc(1);
    QSize * par2 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * par3 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * ptr = new QPixmap( obj->requestPixmap ( par1, par2, *par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}





#pragma ENDDUMP
