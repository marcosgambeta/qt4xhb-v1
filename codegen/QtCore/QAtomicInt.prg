%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAtomicInt ( int value = 0 )
$internalConstructor=|new1|int=0

$prototype=QAtomicInt ( const QAtomicInt & other )
$internalConstructor=|new2|const QAtomicInt &

/*
[1]QAtomicInt ( int value = 0 )
[2]QAtomicInt ( const QAtomicInt & other )
*/

HB_FUNC_STATIC( QATOMICINT_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QAtomicInt_new1();
  }
  else if( ISNUMPAR(1) && ISQATOMICINT(1) )
  {
    QAtomicInt_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool deref()

$prototypeV2=int fetchAndAddAcquire( int valueToAdd )

$prototypeV2=int fetchAndAddOrdered( int valueToAdd )

$prototypeV2=int fetchAndAddRelaxed( int valueToAdd )

$prototypeV2=int fetchAndAddRelease( int valueToAdd )

$prototypeV2=int fetchAndStoreAcquire( int newValue )

$prototypeV2=int fetchAndStoreOrdered( int newValue )

$prototypeV2=int fetchAndStoreRelaxed( int newValue )

$prototypeV2=int fetchAndStoreRelease( int newValue )

$prototypeV2=bool ref()

$prototype=bool testAndSetAcquire ( int expectedValue, int newValue )
$method=|bool|testAndSetAcquire|int,int

$prototype=bool testAndSetOrdered ( int expectedValue, int newValue )
$method=|bool|testAndSetOrdered|int,int

$prototype=bool testAndSetRelaxed ( int expectedValue, int newValue )
$method=|bool|testAndSetRelaxed|int,int

$prototype=bool testAndSetRelease ( int expectedValue, int newValue )
$method=|bool|testAndSetRelease|int,int

$prototypeV2=static bool isFetchAndAddNative()

$prototypeV2=static bool isFetchAndAddWaitFree()

$prototypeV2=static bool isFetchAndStoreNative()

$prototypeV2=static bool isFetchAndStoreWaitFree()

$prototypeV2=static bool isReferenceCountingNative()

$prototypeV2=static bool isReferenceCountingWaitFree()

$prototypeV2=static bool isTestAndSetNative()

$prototypeV2=static bool isTestAndSetWaitFree()

$extraMethods

#pragma ENDDUMP
