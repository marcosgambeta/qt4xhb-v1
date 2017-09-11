$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMUTEX
#endif

CLASS QMutexLocker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD mutex
   METHOD relock
   METHOD unlock

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMutexLocker>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMutexLocker ( QMutex * mutex )
*/
HB_FUNC_STATIC( QMUTEXLOCKER_NEW )
{
  QMutexLocker * o = new QMutexLocker ( PQMUTEX(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

$deleteMethod

/*
QMutex * mutex () const
*/
HB_FUNC_STATIC( QMUTEXLOCKER_MUTEX )
{
  QMutexLocker * obj = (QMutexLocker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMutex * ptr = obj->mutex ();
    _qt4xhb_createReturnClass ( ptr, "QMUTEX" );
  }
}


/*
void relock ()
*/
HB_FUNC_STATIC( QMUTEXLOCKER_RELOCK )
{
  QMutexLocker * obj = (QMutexLocker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->relock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void unlock ()
*/
HB_FUNC_STATIC( QMUTEXLOCKER_UNLOCK )
{
  QMutexLocker * obj = (QMutexLocker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unlock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
