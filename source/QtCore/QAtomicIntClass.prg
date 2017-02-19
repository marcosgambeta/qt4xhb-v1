/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QAtomicInt

   DATA pointer
   DATA class_id INIT Class_Id_QAtomicInt
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QAtomicInt
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAtomicInt
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAtomicInt
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAtomicInt
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAtomicInt
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAtomicInt
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAtomicInt>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QAtomicInt ( int value = 0 )
*/
HB_FUNC_STATIC( QATOMICINT_NEW1 )
{
  QAtomicInt * o = NULL;
  o = new QAtomicInt ( ISNIL(1)? 0 : hb_parni(1) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAtomicInt *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QAtomicInt ( const QAtomicInt & other )
*/
HB_FUNC_STATIC( QATOMICINT_NEW2 )
{
  QAtomicInt * o = NULL;
  QAtomicInt * par1 = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QAtomicInt ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAtomicInt *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    hb_retni( obj->fetchAndAddAcquire ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndAddOrdered ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndAddRelaxed ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndAddRelease ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndStoreAcquire ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndStoreOrdered ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndStoreRelaxed ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndStoreRelease ( hb_parni(1) ) );
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
    hb_retl( obj->testAndSetAcquire ( hb_parni(1), hb_parni(2) ) );
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
    hb_retl( obj->testAndSetOrdered ( hb_parni(1), hb_parni(2) ) );
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
    hb_retl( obj->testAndSetRelaxed ( hb_parni(1), hb_parni(2) ) );
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
    hb_retl( obj->testAndSetRelease ( hb_parni(1), hb_parni(2) ) );
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




#pragma ENDDUMP
