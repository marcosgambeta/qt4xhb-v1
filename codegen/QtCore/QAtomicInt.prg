$header

#include "hbclass.ch"

CLASS QAtomicInt

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD deref
   METHOD fetchAndAddAcquire
   METHOD fetchAndAddOrdered
   METHOD fetchAndAddRelaxed
   METHOD fetchAndAddRelease
   METHOD fetchAndStoreAcquire
   METHOD fetchAndStoreOrdered
   METHOD fetchAndStoreRelaxed
   METHOD fetchAndStoreRelease
   METHOD ref
   METHOD testAndSetAcquire
   METHOD testAndSetOrdered
   METHOD testAndSetRelaxed
   METHOD testAndSetRelease
   METHOD isFetchAndAddNative
   METHOD isFetchAndAddWaitFree
   METHOD isFetchAndStoreNative
   METHOD isFetchAndStoreWaitFree
   METHOD isReferenceCountingNative
   METHOD isReferenceCountingWaitFree
   METHOD isTestAndSetNative
   METHOD isTestAndSetWaitFree

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAtomicInt>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAtomicInt ( int value = 0 )
*/
HB_FUNC_STATIC( QATOMICINT_NEW1 )
{
  QAtomicInt * o = new QAtomicInt ( OPINT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QAtomicInt ( const QAtomicInt & other )
*/
HB_FUNC_STATIC( QATOMICINT_NEW2 )
{
  QAtomicInt * o = new QAtomicInt ( *PQATOMICINT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QAtomicInt ( int value = 0 )
//[2]QAtomicInt ( const QAtomicInt & other )

HB_FUNC_STATIC( QATOMICINT_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QATOMICINT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQATOMICINT(1) )
  {
    HB_FUNC_EXEC( QATOMICINT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool deref ()
*/
HB_FUNC_STATIC( QATOMICINT_DEREF )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->deref () );
  }
}


/*
int fetchAndAddAcquire ( int valueToAdd )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDADDACQUIRE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndAddAcquire ( PINT(1) ) );
  }
}


/*
int fetchAndAddOrdered ( int valueToAdd )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDADDORDERED )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndAddOrdered ( PINT(1) ) );
  }
}


/*
int fetchAndAddRelaxed ( int valueToAdd )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDADDRELAXED )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndAddRelaxed ( PINT(1) ) );
  }
}


/*
int fetchAndAddRelease ( int valueToAdd )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDADDRELEASE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndAddRelease ( PINT(1) ) );
  }
}


/*
int fetchAndStoreAcquire ( int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDSTOREACQUIRE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndStoreAcquire ( PINT(1) ) );
  }
}


/*
int fetchAndStoreOrdered ( int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDSTOREORDERED )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndStoreOrdered ( PINT(1) ) );
  }
}


/*
int fetchAndStoreRelaxed ( int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDSTORERELAXED )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndStoreRelaxed ( PINT(1) ) );
  }
}


/*
int fetchAndStoreRelease ( int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDSTORERELEASE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fetchAndStoreRelease ( PINT(1) ) );
  }
}


/*
bool ref ()
*/
HB_FUNC_STATIC( QATOMICINT_REF )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->ref () );
  }
}


/*
bool testAndSetAcquire ( int expectedValue, int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_TESTANDSETACQUIRE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->testAndSetAcquire ( PINT(1), PINT(2) ) );
  }
}


/*
bool testAndSetOrdered ( int expectedValue, int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_TESTANDSETORDERED )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->testAndSetOrdered ( PINT(1), PINT(2) ) );
  }
}


/*
bool testAndSetRelaxed ( int expectedValue, int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_TESTANDSETRELAXED )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->testAndSetRelaxed ( PINT(1), PINT(2) ) );
  }
}


/*
bool testAndSetRelease ( int expectedValue, int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_TESTANDSETRELEASE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->testAndSetRelease ( PINT(1), PINT(2) ) );
  }
}



/*
bool isFetchAndAddNative ()
*/
HB_FUNC_STATIC( QATOMICINT_ISFETCHANDADDNATIVE )
{
  RBOOL( QAtomicInt::isFetchAndAddNative () );
}


/*
bool isFetchAndAddWaitFree ()
*/
HB_FUNC_STATIC( QATOMICINT_ISFETCHANDADDWAITFREE )
{
  RBOOL( QAtomicInt::isFetchAndAddWaitFree () );
}


/*
bool isFetchAndStoreNative ()
*/
HB_FUNC_STATIC( QATOMICINT_ISFETCHANDSTORENATIVE )
{
  RBOOL( QAtomicInt::isFetchAndStoreNative () );
}


/*
bool isFetchAndStoreWaitFree ()
*/
HB_FUNC_STATIC( QATOMICINT_ISFETCHANDSTOREWAITFREE )
{
  RBOOL( QAtomicInt::isFetchAndStoreWaitFree () );
}


/*
bool isReferenceCountingNative ()
*/
HB_FUNC_STATIC( QATOMICINT_ISREFERENCECOUNTINGNATIVE )
{
  RBOOL( QAtomicInt::isReferenceCountingNative () );
}


/*
bool isReferenceCountingWaitFree ()
*/
HB_FUNC_STATIC( QATOMICINT_ISREFERENCECOUNTINGWAITFREE )
{
  RBOOL( QAtomicInt::isReferenceCountingWaitFree () );
}


/*
bool isTestAndSetNative ()
*/
HB_FUNC_STATIC( QATOMICINT_ISTESTANDSETNATIVE )
{
  RBOOL( QAtomicInt::isTestAndSetNative () );
}


/*
bool isTestAndSetWaitFree ()
*/
HB_FUNC_STATIC( QATOMICINT_ISTESTANDSETWAITFREE )
{
  RBOOL( QAtomicInt::isTestAndSetWaitFree () );
}

$extraMethods

#pragma ENDDUMP
