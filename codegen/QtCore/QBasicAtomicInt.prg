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

$deleteMethod

$prototypeV2=bool ref()

$prototypeV2=bool deref()

$prototype=bool testAndSetRelaxed(int expectedValue, int newValue)
$method=|bool|testAndSetRelaxed|int,int

$prototype=bool testAndSetAcquire(int expectedValue, int newValue)
$method=|bool|testAndSetAcquire|int,int

$prototype=bool testAndSetRelease(int expectedValue, int newValue)
$method=|bool|testAndSetRelease|int,int

$prototype=bool testAndSetOrdered(int expectedValue, int newValue)
$method=|bool|testAndSetOrdered|int,int

$prototypeV2=int fetchAndStoreRelaxed( int newValue )

$prototypeV2=int fetchAndStoreAcquire( int newValue )

$prototypeV2=int fetchAndStoreRelease( int newValue )

$prototypeV2=int fetchAndStoreOrdered( int newValue )

$prototypeV2=int fetchAndAddRelaxed( int valueToAdd )

$prototypeV2=int fetchAndAddAcquire( int valueToAdd )

$prototypeV2=int fetchAndAddRelease( int valueToAdd )

$prototypeV2=int fetchAndAddOrdered( int valueToAdd )

$prototypeV2=static bool isReferenceCountingNative()

$prototypeV2=static bool isReferenceCountingWaitFree()

$prototypeV2=static bool isTestAndSetNative()

$prototypeV2=static bool isTestAndSetWaitFree()

$prototypeV2=static bool isFetchAndStoreNative()

$prototypeV2=static bool isFetchAndStoreWaitFree()

$prototypeV2=static bool isFetchAndAddNative()

$prototypeV2=static bool isFetchAndAddWaitFree()

$extraMethods

#pragma ENDDUMP
