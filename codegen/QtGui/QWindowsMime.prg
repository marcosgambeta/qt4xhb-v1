$header

#include "hbclass.ch"

CLASS QWindowsMime

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD registerMimeType

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWindowsMime
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWindowsMime>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QWINDOWSMIME_DELETE )
{
  QWindowsMime * obj = (QWindowsMime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int registerMimeType ( const QString & mime )
*/
HB_FUNC_STATIC( QWINDOWSMIME_REGISTERMIMETYPE )
{
  RINT( QWindowsMime::registerMimeType ( PQSTRING(1) ) );
}

$extraMethods

#pragma ENDDUMP
