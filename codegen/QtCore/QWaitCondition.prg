$header

#include "hbclass.ch"


CLASS QWaitCondition

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD wakeAll
   METHOD wakeOne
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWaitCondition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWaitCondition>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWaitCondition ()
*/
HB_FUNC_STATIC( QWAITCONDITION_NEW )
{
  QWaitCondition * o = new QWaitCondition ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


HB_FUNC_STATIC( QWAITCONDITION_DELETE )
{
  QWaitCondition * obj = (QWaitCondition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void wakeAll ()
*/
HB_FUNC_STATIC( QWAITCONDITION_WAKEALL )
{
  QWaitCondition * obj = (QWaitCondition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->wakeAll ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void wakeOne ()
*/
HB_FUNC_STATIC( QWAITCONDITION_WAKEONE )
{
  QWaitCondition * obj = (QWaitCondition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->wakeOne ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
