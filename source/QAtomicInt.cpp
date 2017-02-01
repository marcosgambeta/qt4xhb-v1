/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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
HB_FUNC( QATOMICINT_NEW1 )
{
  QAtomicInt * o = NULL;
  int par1 = ISNIL(1)? 0 : hb_parni(1);
  o = new QAtomicInt ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAtomicInt *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QAtomicInt ( const QAtomicInt & other )
*/
HB_FUNC( QATOMICINT_NEW2 )
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

HB_FUNC( QATOMICINT_NEW )
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

HB_FUNC( QATOMICINT_DELETE )
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
HB_FUNC( QATOMICINT_DEREF )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->deref (  );
    hb_retl( b );
  }
}


/*
int fetchAndAddAcquire ( int valueToAdd )
*/
HB_FUNC( QATOMICINT_FETCHANDADDACQUIRE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndAddAcquire ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndAddOrdered ( int valueToAdd )
*/
HB_FUNC( QATOMICINT_FETCHANDADDORDERED )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndAddOrdered ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndAddRelaxed ( int valueToAdd )
*/
HB_FUNC( QATOMICINT_FETCHANDADDRELAXED )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndAddRelaxed ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndAddRelease ( int valueToAdd )
*/
HB_FUNC( QATOMICINT_FETCHANDADDRELEASE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndAddRelease ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndStoreAcquire ( int newValue )
*/
HB_FUNC( QATOMICINT_FETCHANDSTOREACQUIRE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndStoreAcquire ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndStoreOrdered ( int newValue )
*/
HB_FUNC( QATOMICINT_FETCHANDSTOREORDERED )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndStoreOrdered ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndStoreRelaxed ( int newValue )
*/
HB_FUNC( QATOMICINT_FETCHANDSTORERELAXED )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndStoreRelaxed ( par1 );
    hb_retni( i );
  }
}


/*
int fetchAndStoreRelease ( int newValue )
*/
HB_FUNC( QATOMICINT_FETCHANDSTORERELEASE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fetchAndStoreRelease ( par1 );
    hb_retni( i );
  }
}


/*
bool ref ()
*/
HB_FUNC( QATOMICINT_REF )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->ref (  );
    hb_retl( b );
  }
}


/*
bool testAndSetAcquire ( int expectedValue, int newValue )
*/
HB_FUNC( QATOMICINT_TESTANDSETACQUIRE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    bool b = obj->testAndSetAcquire ( par1, par2 );
    hb_retl( b );
  }
}


/*
bool testAndSetOrdered ( int expectedValue, int newValue )
*/
HB_FUNC( QATOMICINT_TESTANDSETORDERED )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    bool b = obj->testAndSetOrdered ( par1, par2 );
    hb_retl( b );
  }
}


/*
bool testAndSetRelaxed ( int expectedValue, int newValue )
*/
HB_FUNC( QATOMICINT_TESTANDSETRELAXED )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    bool b = obj->testAndSetRelaxed ( par1, par2 );
    hb_retl( b );
  }
}


/*
bool testAndSetRelease ( int expectedValue, int newValue )
*/
HB_FUNC( QATOMICINT_TESTANDSETRELEASE )
{
  QAtomicInt * obj = (QAtomicInt *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    bool b = obj->testAndSetRelease ( par1, par2 );
    hb_retl( b );
  }
}



/*
bool isFetchAndAddNative ()
*/
HB_FUNC( QATOMICINT_ISFETCHANDADDNATIVE )
{
  bool b = QAtomicInt::isFetchAndAddNative (  );
  hb_retl( b );
}


/*
bool isFetchAndAddWaitFree ()
*/
HB_FUNC( QATOMICINT_ISFETCHANDADDWAITFREE )
{
  bool b = QAtomicInt::isFetchAndAddWaitFree (  );
  hb_retl( b );
}


/*
bool isFetchAndStoreNative ()
*/
HB_FUNC( QATOMICINT_ISFETCHANDSTORENATIVE )
{
  bool b = QAtomicInt::isFetchAndStoreNative (  );
  hb_retl( b );
}


/*
bool isFetchAndStoreWaitFree ()
*/
HB_FUNC( QATOMICINT_ISFETCHANDSTOREWAITFREE )
{
  bool b = QAtomicInt::isFetchAndStoreWaitFree (  );
  hb_retl( b );
}


/*
bool isReferenceCountingNative ()
*/
HB_FUNC( QATOMICINT_ISREFERENCECOUNTINGNATIVE )
{
  bool b = QAtomicInt::isReferenceCountingNative (  );
  hb_retl( b );
}


/*
bool isReferenceCountingWaitFree ()
*/
HB_FUNC( QATOMICINT_ISREFERENCECOUNTINGWAITFREE )
{
  bool b = QAtomicInt::isReferenceCountingWaitFree (  );
  hb_retl( b );
}


/*
bool isTestAndSetNative ()
*/
HB_FUNC( QATOMICINT_ISTESTANDSETNATIVE )
{
  bool b = QAtomicInt::isTestAndSetNative (  );
  hb_retl( b );
}


/*
bool isTestAndSetWaitFree ()
*/
HB_FUNC( QATOMICINT_ISTESTANDSETWAITFREE )
{
  bool b = QAtomicInt::isTestAndSetWaitFree (  );
  hb_retl( b );
}



