/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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


HB_FUNC( QBASICATOMICINT_DELETE )
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
HB_FUNC( QBASICATOMICINT_REF )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->ref (  );
    hb_retl( b );
  }
}


/*
bool deref()
*/
HB_FUNC( QBASICATOMICINT_DEREF )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->deref (  );
    hb_retl( b );
  }
}


/*
bool testAndSetRelaxed(int expectedValue, int newValue)
*/
HB_FUNC( QBASICATOMICINT_TESTANDSETRELAXED )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    bool b = obj->testAndSetRelaxed ( par1, par2 );
    hb_retl( b );
  }
}


/*
bool testAndSetAcquire(int expectedValue, int newValue)
*/
HB_FUNC( QBASICATOMICINT_TESTANDSETACQUIRE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    bool b = obj->testAndSetAcquire ( par1, par2 );
    hb_retl( b );
  }
}


/*
bool testAndSetRelease(int expectedValue, int newValue)
*/
HB_FUNC( QBASICATOMICINT_TESTANDSETRELEASE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    bool b = obj->testAndSetRelease ( par1, par2 );
    hb_retl( b );
  }
}


/*
bool testAndSetOrdered(int expectedValue, int newValue)
*/
HB_FUNC( QBASICATOMICINT_TESTANDSETORDERED )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    bool b = obj->testAndSetOrdered ( par1, par2 );
    hb_retl( b );
  }
}


/*
int fetchAndStoreRelaxed(int newValue)
*/
HB_FUNC( QBASICATOMICINT_FETCHANDSTORERELAXED )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndStoreRelaxed ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndStoreAcquire(int newValue)
*/
HB_FUNC( QBASICATOMICINT_FETCHANDSTOREACQUIRE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndStoreAcquire ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndStoreRelease(int newValue)
*/
HB_FUNC( QBASICATOMICINT_FETCHANDSTORERELEASE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndStoreRelease ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndStoreOrdered(int newValue)
*/
HB_FUNC( QBASICATOMICINT_FETCHANDSTOREORDERED )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndStoreOrdered ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndAddRelaxed(int valueToAdd)
*/
HB_FUNC( QBASICATOMICINT_FETCHANDADDRELAXED )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndAddRelaxed ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndAddAcquire(int valueToAdd)
*/
HB_FUNC( QBASICATOMICINT_FETCHANDADDACQUIRE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndAddAcquire ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndAddRelease(int valueToAdd)
*/
HB_FUNC( QBASICATOMICINT_FETCHANDADDRELEASE )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndAddRelease ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndAddOrdered(int valueToAdd)
*/
HB_FUNC( QBASICATOMICINT_FETCHANDADDORDERED )
{
  QBasicAtomicInt * obj = (QBasicAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndAddOrdered ( par1 );
    hb_retni( i );
  }
}



/*
static bool isReferenceCountingNative()
*/
HB_FUNC( QBASICATOMICINT_ISREFERENCECOUNTINGNATIVE )
{
  bool b = QBasicAtomicInt::isReferenceCountingNative (  );
  hb_retl( b );
}


/*
static bool isReferenceCountingWaitFree()
*/
HB_FUNC( QBASICATOMICINT_ISREFERENCECOUNTINGWAITFREE )
{
  bool b = QBasicAtomicInt::isReferenceCountingWaitFree (  );
  hb_retl( b );
}


/*
static bool isTestAndSetNative()
*/
HB_FUNC( QBASICATOMICINT_ISTESTANDSETNATIVE )
{
  bool b = QBasicAtomicInt::isTestAndSetNative (  );
  hb_retl( b );
}


/*
static bool isTestAndSetWaitFree()
*/
HB_FUNC( QBASICATOMICINT_ISTESTANDSETWAITFREE )
{
  bool b = QBasicAtomicInt::isTestAndSetWaitFree (  );
  hb_retl( b );
}


/*
static bool isFetchAndStoreNative()
*/
HB_FUNC( QBASICATOMICINT_ISFETCHANDSTORENATIVE )
{
  bool b = QBasicAtomicInt::isFetchAndStoreNative (  );
  hb_retl( b );
}


/*
static bool isFetchAndStoreWaitFree()
*/
HB_FUNC( QBASICATOMICINT_ISFETCHANDSTOREWAITFREE )
{
  bool b = QBasicAtomicInt::isFetchAndStoreWaitFree (  );
  hb_retl( b );
}


/*
static bool isFetchAndAddNative()
*/
HB_FUNC( QBASICATOMICINT_ISFETCHANDADDNATIVE )
{
  bool b = QBasicAtomicInt::isFetchAndAddNative (  );
  hb_retl( b );
}


/*
static bool isFetchAndAddWaitFree()
*/
HB_FUNC( QBASICATOMICINT_ISFETCHANDADDWAITFREE )
{
  bool b = QBasicAtomicInt::isFetchAndAddWaitFree (  );
  hb_retl( b );
}



