/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAbstractVideoBuffer>

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

#include <QVariant>


HB_FUNC( QABSTRACTVIDEOBUFFER_DELETE )
{
  QAbstractVideoBuffer * obj = (QAbstractVideoBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QVariant handle () const
*/
HB_FUNC( QABSTRACTVIDEOBUFFER_HANDLE )
{
  QAbstractVideoBuffer * obj = (QAbstractVideoBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->handle (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
HandleType handleType () const
*/
HB_FUNC( QABSTRACTVIDEOBUFFER_HANDLETYPE )
{
  QAbstractVideoBuffer * obj = (QAbstractVideoBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->handleType (  );
    hb_retni( i );
  }
}


/*
virtual uchar * map ( MapMode mode, int * numBytes, int * bytesPerLine ) = 0
*/
HB_FUNC( QABSTRACTVIDEOBUFFER_MAP )
{
  QAbstractVideoBuffer * obj = (QAbstractVideoBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2;
    int par3;
    uchar * ptr = obj->map (  (QAbstractVideoBuffer::MapMode) par1, &par2, &par3 );
    _qt4xhb_createReturnClass ( ptr, "UCHAR" );    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
  }
}


/*
virtual MapMode mapMode () const = 0
*/
HB_FUNC( QABSTRACTVIDEOBUFFER_MAPMODE )
{
  QAbstractVideoBuffer * obj = (QAbstractVideoBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->mapMode (  );
    hb_retni( i );
  }
}


/*
virtual void unmap () = 0
*/
HB_FUNC( QABSTRACTVIDEOBUFFER_UNMAP )
{
  QAbstractVideoBuffer * obj = (QAbstractVideoBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unmap (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




