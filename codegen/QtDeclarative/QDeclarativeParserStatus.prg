$header

#include "hbclass.ch"


CLASS QDeclarativeParserStatus

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD classBegin
   METHOD componentComplete
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeParserStatus
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDeclarativeParserStatus>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"



/*
virtual void classBegin () = 0
*/
HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_CLASSBEGIN )
{
  QDeclarativeParserStatus * obj = (QDeclarativeParserStatus *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->classBegin ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void componentComplete () = 0
*/
HB_FUNC_STATIC( QDECLARATIVEPARSERSTATUS_COMPONENTCOMPLETE )
{
  QDeclarativeParserStatus * obj = (QDeclarativeParserStatus *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->componentComplete ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
