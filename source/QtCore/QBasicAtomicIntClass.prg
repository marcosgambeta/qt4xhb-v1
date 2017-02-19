/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QBasicAtomicInt

   DATA pointer
   DATA class_id INIT Class_Id_QBasicAtomicInt
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QBasicAtomicInt
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QBasicAtomicInt
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QBasicAtomicInt
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QBasicAtomicInt
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QBasicAtomicInt
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QBasicAtomicInt
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QBasicAtomicInt>

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
    hb_retl( obj->ref (  ) );
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
    hb_retl( obj->deref (  ) );
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
    hb_retl( obj->testAndSetRelaxed ( hb_parni(1), hb_parni(2) ) );
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
    hb_retl( obj->testAndSetAcquire ( hb_parni(1), hb_parni(2) ) );
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
    hb_retl( obj->testAndSetRelease ( hb_parni(1), hb_parni(2) ) );
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
    hb_retl( obj->testAndSetOrdered ( hb_parni(1), hb_parni(2) ) );
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
    hb_retni( obj->fetchAndStoreRelaxed ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndStoreAcquire ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndStoreRelease ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndStoreOrdered ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndAddRelaxed ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndAddAcquire ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndAddRelease ( hb_parni(1) ) );
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
    hb_retni( obj->fetchAndAddOrdered ( hb_parni(1) ) );
  }
}



/*
static bool isReferenceCountingNative()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISREFERENCECOUNTINGNATIVE )
{
  hb_retl( QBasicAtomicInt::isReferenceCountingNative (  ) );
}


/*
static bool isReferenceCountingWaitFree()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISREFERENCECOUNTINGWAITFREE )
{
  hb_retl( QBasicAtomicInt::isReferenceCountingWaitFree (  ) );
}


/*
static bool isTestAndSetNative()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISTESTANDSETNATIVE )
{
  hb_retl( QBasicAtomicInt::isTestAndSetNative (  ) );
}


/*
static bool isTestAndSetWaitFree()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISTESTANDSETWAITFREE )
{
  hb_retl( QBasicAtomicInt::isTestAndSetWaitFree (  ) );
}


/*
static bool isFetchAndStoreNative()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISFETCHANDSTORENATIVE )
{
  hb_retl( QBasicAtomicInt::isFetchAndStoreNative (  ) );
}


/*
static bool isFetchAndStoreWaitFree()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISFETCHANDSTOREWAITFREE )
{
  hb_retl( QBasicAtomicInt::isFetchAndStoreWaitFree (  ) );
}


/*
static bool isFetchAndAddNative()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISFETCHANDADDNATIVE )
{
  hb_retl( QBasicAtomicInt::isFetchAndAddNative (  ) );
}


/*
static bool isFetchAndAddWaitFree()
*/
HB_FUNC_STATIC( QBASICATOMICINT_ISFETCHANDADDWAITFREE )
{
  hb_retl( QBasicAtomicInt::isFetchAndAddWaitFree (  ) );
}




#pragma ENDDUMP
