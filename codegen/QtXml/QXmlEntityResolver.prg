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

$destructor

#pragma BEGINDUMP

#include <QXmlEntityResolver>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

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
