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

PROCEDURE destroyObject () CLASS QXmlStreamEntityResolver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlStreamEntityResolver>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QXMLSTREAMENTITYRESOLVER_DELETE )
{
  QXmlStreamEntityResolver * obj = (QXmlStreamEntityResolver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
