$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTFILEENGINE
#endif

CLASS QAbstractFileEngineHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractFileEngineHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractFileEngineHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QABSTRACTFILEENGINEHANDLER_DELETE )
{
  QAbstractFileEngineHandler * obj = (QAbstractFileEngineHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QAbstractFileEngine * create ( const QString & fileName ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINEHANDLER_CREATE )
{
  QAbstractFileEngineHandler * obj = (QAbstractFileEngineHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractFileEngine * ptr = obj->create ( PQSTRING(1) );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTFILEENGINE" );
  }
}

$extraMethods

#pragma ENDDUMP
