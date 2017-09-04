$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREADWRITELOCK
#endif

CLASS QWriteLocker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD readWriteLock
   METHOD relock
   METHOD unlock
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWriteLocker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWriteLocker>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWriteLocker ( QReadWriteLock * lock )
*/
HB_FUNC_STATIC( QWRITELOCKER_NEW )
{
  QWriteLocker * o = new QWriteLocker ( PQREADWRITELOCK(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QWRITELOCKER_DELETE )
{
  QWriteLocker * obj = (QWriteLocker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QReadWriteLock * readWriteLock () const
*/
HB_FUNC_STATIC( QWRITELOCKER_READWRITELOCK )
{
  QWriteLocker * obj = (QWriteLocker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QReadWriteLock * ptr = obj->readWriteLock ();
    _qt4xhb_createReturnClass ( ptr, "QREADWRITELOCK" );
  }
}


/*
void relock ()
*/
HB_FUNC_STATIC( QWRITELOCKER_RELOCK )
{
  QWriteLocker * obj = (QWriteLocker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->relock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void unlock ()
*/
HB_FUNC_STATIC( QWRITELOCKER_UNLOCK )
{
  QWriteLocker * obj = (QWriteLocker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unlock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
