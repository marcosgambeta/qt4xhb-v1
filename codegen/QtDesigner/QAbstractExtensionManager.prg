$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QAbstractExtensionManager

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD extension
   METHOD registerExtensions
   METHOD unregisterExtensions
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractExtensionManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractExtensionManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_DELETE )
{
  QAbstractExtensionManager * obj = (QAbstractExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_EXTENSION )
{
  QAbstractExtensionManager * obj = (QAbstractExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->extension ( PQOBJECT(1), PQSTRING(2) );
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
virtual void registerExtensions ( QAbstractExtensionFactory * factory, const QString & iid ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_REGISTEREXTENSIONS )
{
  QAbstractExtensionManager * obj = (QAbstractExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractExtensionFactory * par1 = (QAbstractExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->registerExtensions ( par1, PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void unregisterExtensions ( QAbstractExtensionFactory * factory, const QString & iid ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEXTENSIONMANAGER_UNREGISTEREXTENSIONS )
{
  QAbstractExtensionManager * obj = (QAbstractExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractExtensionFactory * par1 = (QAbstractExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->unregisterExtensions ( par1, PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
