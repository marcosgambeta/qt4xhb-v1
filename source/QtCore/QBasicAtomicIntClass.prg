/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QBasicAtomicInt
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QBasicAtomicInt>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QBASICATOMICINT_DELETE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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

HB_FUNC_STATIC( QBASICATOMICINT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QBASICATOMICINT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBASICATOMICINT_NEWFROM );
}

HB_FUNC_STATIC( QBASICATOMICINT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBASICATOMICINT_NEWFROM );
}

HB_FUNC_STATIC( QBASICATOMICINT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBASICATOMICINT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
