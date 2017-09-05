$header

#include "hbclass.ch"


CLASS QXmlStreamEntityResolver

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD resolveUndeclaredEntity
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlStreamEntityResolver>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QString resolveUndeclaredEntity(const QString & name)
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYRESOLVER_RESOLVEUNDECLAREDENTITY )
{
  QXmlStreamEntityResolver * obj = (QXmlStreamEntityResolver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->resolveUndeclaredEntity ( PQSTRING(1) ) );
  }
}

$extraMethods

#pragma ENDDUMP
