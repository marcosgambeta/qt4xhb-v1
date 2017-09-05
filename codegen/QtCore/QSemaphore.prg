$header

#include "hbclass.ch"


CLASS QSemaphore

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD acquire
   METHOD available
   METHOD release
   METHOD tryAcquire1
   METHOD tryAcquire2
   METHOD tryAcquire
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSemaphore>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSemaphore ( int n = 0 )
*/
HB_FUNC_STATIC( QSEMAPHORE_NEW )
{
  QSemaphore * o = new QSemaphore ( OPINT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

$deleteMethod

/*
void acquire ( int n = 1 )
*/
HB_FUNC_STATIC( QSEMAPHORE_ACQUIRE )
{
  QSemaphore * obj = (QSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->acquire ( OPINT(1,1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int available () const
*/
HB_FUNC_STATIC( QSEMAPHORE_AVAILABLE )
{
  QSemaphore * obj = (QSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->available () );
  }
}


/*
void release ( int n = 1 )
*/
HB_FUNC_STATIC( QSEMAPHORE_RELEASE )
{
  QSemaphore * obj = (QSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->release ( OPINT(1,1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool tryAcquire ( int n = 1 )
*/
HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE1 )
{
  QSemaphore * obj = (QSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->tryAcquire ( OPINT(1,1) ) );
  }
}


/*
bool tryAcquire ( int n, int timeout )
*/
HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE2 )
{
  QSemaphore * obj = (QSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->tryAcquire ( PINT(1), PINT(2) ) );
  }
}


//[1]bool tryAcquire ( int n = 1 )
//[2]bool tryAcquire ( int n, int timeout )

HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSEMAPHORE_TRYACQUIRE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSEMAPHORE_TRYACQUIRE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSEMAPHORE_TRYACQUIRE2 );
  }
}

$extraMethods

#pragma ENDDUMP
