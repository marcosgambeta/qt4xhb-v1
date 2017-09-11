$header

#include "hbclass.ch"

CLASS QBasicAtomicInt

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD ref
   METHOD deref
   METHOD testAndSetRelaxed
   METHOD testAndSetAcquire
   METHOD testAndSetRelease
   METHOD testAndSetOrdered
   METHOD fetchAndStoreRelaxed
   METHOD fetchAndStoreAcquire
   METHOD fetchAndStoreRelease
   METHOD fetchAndStoreOrdered
   METHOD fetchAndAddRelaxed
   METHOD fetchAndAddAcquire
   METHOD fetchAndAddRelease
   METHOD fetchAndAddOrdered
   METHOD isReferenceCountingNative
   METHOD isReferenceCountingWaitFree
   METHOD isTestAndSetNative
   METHOD isTestAndSetWaitFree
   METHOD isFetchAndStoreNative
   METHOD isFetchAndStoreWaitFree
   METHOD isFetchAndAddNative
   METHOD isFetchAndAddWaitFree

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QBasicAtomicInt>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
bool ref()
*/
HB_FUNC_STATIC( QBASICATOMICINT_REF )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->ref () );
  }
}


/*
bool deref()
*/
HB_FUNC_STATIC( QBASICATOMICINT_DEREF )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->deref () );
  }
}


/*
bool testAndSetRelaxed(int expectedValue, int newValue)
*/
HB_FUNC_STATIC( QBASICATOMICINT_TESTANDSETRELAXED )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->testAndSetRelaxed ( PINT(1), PINT(2) ) );
  }
}


/*
bool testAndSetAcquire(int expectedValue, int newValue)
*/
HB_FUNC_STATIC( QBASICATOMICINT_TESTANDSETACQUIRE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->testAndSetAcquire ( PINT(1), PINT(2) ) );
  }
}


/*
bool testAndSetRelease(int expectedValue, int newValue)
*/
HB_FUNC_STATIC( QBASICATOMICINT_TESTANDSETRELEASE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->testAndSetRelease ( PINT(1), PINT(2) ) );
  }
}


/*
bool testAndSetOrdered(int expectedValue, int newValue)
*/
HB_FUNC_STATIC( QBASICATOMICINT_TESTANDSETORDERED )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->testAndSetOrdered ( PINT(1), PINT(2) ) );
  }
}


/*
int fetchAndStoreRelaxed(int newValue)
*/
HB_FUNC_STATIC( QBASICATOMICINT_FETCHANDSTORERELAXED )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndStoreRelaxed ( PINT(1) ) );
  }
}


/*
int fetchAndStoreAcquire(int newValue)
*/
HB_FUNC_STATIC( QBASICATOMICINT_FETCHANDSTOREACQUIRE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndStoreAcquire ( PINT(1) ) );
  }
}


/*
int fetchAndStoreRelease(int newValue)
*/
HB_FUNC_STATIC( QBASICATOMICINT_FETCHANDSTORERELEASE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndStoreRelease ( PINT(1) ) );
  }
}


/*
int fetchAndStoreOrdered(int newValue)
*/
HB_FUNC_STATIC( QBASICATOMICINT_FETCHANDSTOREORDERED )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndStoreOrdered ( PINT(1) ) );
  }
}


/*
int fetchAndAddRelaxed(int valueToAdd)
*/
HB_FUNC_STATIC( QBASICATOMICINT_FETCHANDADDRELAXED )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndAddRelaxed ( PINT(1) ) );
  }
}


/*
int fetchAndAddAcquire(int valueToAdd)
*/
HB_FUNC_STATIC( QBASICATOMICINT_FETCHANDADDACQUIRE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndAddAcquire ( PINT(1) ) );
  }
}


/*
int fetchAndAddRelease(int valueToAdd)
*/
HB_FUNC_STATIC( QBASICATOMICINT_FETCHANDADDRELEASE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndAddRelease ( PINT(1) ) );
  }
}


/*
int fetchAndAddOrdered(int valueToAdd)
*/
HB_FUNC_STATIC( QBASICATOMICINT_FETCHANDADDORDERED )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndAddOrdered ( PINT(1) ) );
  }
}



/*
static bool isReferenceCountingNative()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISREFERENCECOUNTINGNATIVE )
{
  RBOOL( QBasicAtomicInt::isReferenceCountingNative () );
}


/*
static bool isReferenceCountingWaitFree()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISREFERENCECOUNTINGWAITFREE )
{
  RBOOL( QBasicAtomicInt::isReferenceCountingWaitFree () );
}


/*
static bool isTestAndSetNative()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISTESTANDSETNATIVE )
{
  RBOOL( QBasicAtomicInt::isTestAndSetNative () );
}


/*
static bool isTestAndSetWaitFree()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISTESTANDSETWAITFREE )
{
  RBOOL( QBasicAtomicInt::isTestAndSetWaitFree () );
}


/*
static bool isFetchAndStoreNative()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISFETCHANDSTORENATIVE )
{
  RBOOL( QBasicAtomicInt::isFetchAndStoreNative () );
}


/*
static bool isFetchAndStoreWaitFree()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISFETCHANDSTOREWAITFREE )
{
  RBOOL( QBasicAtomicInt::isFetchAndStoreWaitFree () );
}


/*
static bool isFetchAndAddNative()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISFETCHANDADDNATIVE )
{
  RBOOL( QBasicAtomicInt::isFetchAndAddNative () );
}


/*
static bool isFetchAndAddWaitFree()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISFETCHANDADDWAITFREE )
{
  RBOOL( QBasicAtomicInt::isFetchAndAddWaitFree () );
}

$extraMethods

#pragma ENDDUMP
