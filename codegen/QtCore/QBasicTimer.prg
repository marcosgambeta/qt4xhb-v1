$header

#include "hbclass.ch"


CLASS QBasicTimer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD start
   METHOD stop
   METHOD timerId
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBasicTimer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QBasicTimer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QBasicTimer ()
*/
HB_FUNC_STATIC( QBASICTIMER_NEW )
{
  QBasicTimer * o = new QBasicTimer ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QBASICTIMER_DELETE )
{
  QBasicTimer * obj = (QBasicTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isActive () const
*/
HB_FUNC_STATIC( QBASICTIMER_ISACTIVE )
{
  QBasicTimer * obj = (QBasicTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isActive () );
  }
}


/*
void start ( int msec, QObject * object )
*/
HB_FUNC_STATIC( QBASICTIMER_START )
{
  QBasicTimer * obj = (QBasicTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->start ( PINT(1), PQOBJECT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC_STATIC( QBASICTIMER_STOP )
{
  QBasicTimer * obj = (QBasicTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int timerId () const
*/
HB_FUNC_STATIC( QBASICTIMER_TIMERID )
{
  QBasicTimer * obj = (QBasicTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->timerId () );
  }
}

$extraMethods

#pragma ENDDUMP
