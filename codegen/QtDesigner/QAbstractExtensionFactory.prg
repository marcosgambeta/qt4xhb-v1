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

$deleteMethod

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
