$header

#include "hbclass.ch"


CLASS QMutex

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD lock
   METHOD tryLock1
   METHOD tryLock2
   METHOD tryLock
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

#include <QMutex>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMutex ( RecursionMode mode = NonRecursive )
*/
HB_FUNC_STATIC( QMUTEX_NEW )
{
  QMutex * o = new QMutex ( ISNIL(1)? QMutex::NonRecursive : (QMutex::RecursionMode) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


HB_FUNC_STATIC( QMUTEX_DELETE )
{
  QMutex * obj = (QMutex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void lock ()
*/
HB_FUNC_STATIC( QMUTEX_LOCK )
{
  QMutex * obj = (QMutex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->lock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool tryLock ()
*/
HB_FUNC_STATIC( QMUTEX_TRYLOCK1 )
{
  QMutex * obj = (QMutex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->tryLock () );
  }
}


/*
bool tryLock ( int timeout )
*/
HB_FUNC_STATIC( QMUTEX_TRYLOCK2 )
{
  QMutex * obj = (QMutex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->tryLock ( PINT(1) ) );
  }
}


//[1]bool tryLock ()
//[2]bool tryLock ( int timeout )

HB_FUNC_STATIC( QMUTEX_TRYLOCK )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMUTEX_TRYLOCK1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMUTEX_TRYLOCK2 );
  }
}

/*
void unlock ()
*/
HB_FUNC_STATIC( QMUTEX_UNLOCK )
{
  QMutex * obj = (QMutex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unlock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
