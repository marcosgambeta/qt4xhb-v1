/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QAtomicInt

   DATA pointer
   DATA class_id INIT Class_Id_QAtomicInt
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

PROCEDURE destroyObject () CLASS QAtomicInt
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAtomicInt>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QAtomicInt ( int value = 0 )
*/
HB_FUNC_STATIC( QATOMICINT_NEW1 )
{
  QAtomicInt * o = NULL;
  o = new QAtomicInt ( ISNIL(1)? 0 : hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QAtomicInt ( const QAtomicInt & other )
*/
HB_FUNC_STATIC( QATOMICINT_NEW2 )
{
  QAtomicInt * o = NULL;
  QAtomicInt * par1 = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QAtomicInt ( *par1 );
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

HB_FUNC_STATIC( QATOMICINT_DELETE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool deref ()
*/
HB_FUNC_STATIC( QATOMICINT_DEREF )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->deref (  ) );
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
    hb_retni( obj->fetchAndAddAcquire ( PINT(1) ) );
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
    hb_retni( obj->fetchAndAddOrdered ( PINT(1) ) );
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
    hb_retni( obj->fetchAndAddRelaxed ( PINT(1) ) );
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
    hb_retni( obj->fetchAndAddRelease ( PINT(1) ) );
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
    hb_retni( obj->fetchAndStoreAcquire ( PINT(1) ) );
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
    hb_retni( obj->fetchAndStoreOrdered ( PINT(1) ) );
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
    hb_retni( obj->fetchAndStoreRelaxed ( PINT(1) ) );
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
    hb_retni( obj->fetchAndStoreRelease ( PINT(1) ) );
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
    hb_retl( obj->ref (  ) );
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
    hb_retl( obj->testAndSetAcquire ( PINT(1), PINT(2) ) );
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
    hb_retl( obj->testAndSetOrdered ( PINT(1), PINT(2) ) );
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
    hb_retl( obj->testAndSetRelaxed ( PINT(1), PINT(2) ) );
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
    hb_retl( obj->testAndSetRelease ( PINT(1), PINT(2) ) );
  }
}



/*
bool isFetchAndAddNative ()
*/
HB_FUNC_STATIC( QATOMICINT_ISFETCHANDADDNATIVE )
{
  hb_retl( QAtomicInt::isFetchAndAddNative (  ) );
}


/*
bool isFetchAndAddWaitFree ()
*/
HB_FUNC_STATIC( QATOMICINT_ISFETCHANDADDWAITFREE )
{
  hb_retl( QAtomicInt::isFetchAndAddWaitFree (  ) );
}


/*
bool isFetchAndStoreNative ()
*/
HB_FUNC_STATIC( QATOMICINT_ISFETCHANDSTORENATIVE )
{
  hb_retl( QAtomicInt::isFetchAndStoreNative (  ) );
}


/*
bool isFetchAndStoreWaitFree ()
*/
HB_FUNC_STATIC( QATOMICINT_ISFETCHANDSTOREWAITFREE )
{
  hb_retl( QAtomicInt::isFetchAndStoreWaitFree (  ) );
}


/*
bool isReferenceCountingNative ()
*/
HB_FUNC_STATIC( QATOMICINT_ISREFERENCECOUNTINGNATIVE )
{
  hb_retl( QAtomicInt::isReferenceCountingNative (  ) );
}


/*
bool isReferenceCountingWaitFree ()
*/
HB_FUNC_STATIC( QATOMICINT_ISREFERENCECOUNTINGWAITFREE )
{
  hb_retl( QAtomicInt::isReferenceCountingWaitFree (  ) );
}


/*
bool isTestAndSetNative ()
*/
HB_FUNC_STATIC( QATOMICINT_ISTESTANDSETNATIVE )
{
  hb_retl( QAtomicInt::isTestAndSetNative (  ) );
}


/*
bool isTestAndSetWaitFree ()
*/
HB_FUNC_STATIC( QATOMICINT_ISTESTANDSETWAITFREE )
{
  hb_retl( QAtomicInt::isTestAndSetWaitFree (  ) );
}


HB_FUNC_STATIC( QATOMICINT_NEWFROM )
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

HB_FUNC_STATIC( QATOMICINT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QATOMICINT_NEWFROM );
}

HB_FUNC_STATIC( QATOMICINT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QATOMICINT_NEWFROM );
}

HB_FUNC_STATIC( QATOMICINT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QATOMICINT_SETSELFDESTRUCTION )
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
