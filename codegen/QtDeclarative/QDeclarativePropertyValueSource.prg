$header

#include "hbclass.ch"


CLASS QDeclarativePropertyValueSource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setTarget
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativePropertyValueSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDeclarativePropertyValueSource>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QDECLARATIVEPROPERTYVALUESOURCE_DELETE )
{
  QDeclarativePropertyValueSource * obj = (QDeclarativePropertyValueSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void setTarget ( const QDeclarativeProperty & property ) = 0
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYVALUESOURCE_SETTARGET )
{
  QDeclarativePropertyValueSource * obj = (QDeclarativePropertyValueSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTarget ( *PQDECLARATIVEPROPERTY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
