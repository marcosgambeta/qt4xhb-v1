$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QAbstractExtensionFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD extension
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractExtensionFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QABSTRACTEXTENSIONFACTORY_DELETE )
{
  QAbstractExtensionFactory * obj = (QAbstractExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QObject * extension ( QObject * object, const QString & iid ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTEXTENSIONFACTORY_EXTENSION )
{
  QAbstractExtensionFactory * obj = (QAbstractExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->extension ( PQOBJECT(1), PQSTRING(2) );
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

$extraMethods

#pragma ENDDUMP
