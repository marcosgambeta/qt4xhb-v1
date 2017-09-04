$header

#include "hbclass.ch"


CLASS QXmlEntityResolver

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD errorString
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlEntityResolver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlEntityResolver>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QXMLENTITYRESOLVER_DELETE )
{
  QXmlEntityResolver * obj = (QXmlEntityResolver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLENTITYRESOLVER_ERRORSTRING )
{
  QXmlEntityResolver * obj = (QXmlEntityResolver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}

$extraMethods

#pragma ENDDUMP
