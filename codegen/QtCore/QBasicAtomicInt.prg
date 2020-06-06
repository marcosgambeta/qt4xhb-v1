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

$prototype=int fetchAndStoreRelaxed(int newValue)
$method=|int|fetchAndStoreRelaxed|int

$prototype=int fetchAndStoreAcquire(int newValue)
$method=|int|fetchAndStoreAcquire|int

$prototype=int fetchAndStoreRelease(int newValue)
$method=|int|fetchAndStoreRelease|int

$prototype=int fetchAndStoreOrdered(int newValue)
$method=|int|fetchAndStoreOrdered|int

$prototype=int fetchAndAddRelaxed(int valueToAdd)
$method=|int|fetchAndAddRelaxed|int

$prototype=int fetchAndAddAcquire(int valueToAdd)
$method=|int|fetchAndAddAcquire|int

$prototype=int fetchAndAddRelease(int valueToAdd)
$method=|int|fetchAndAddRelease|int

$prototype=int fetchAndAddOrdered(int valueToAdd)
$method=|int|fetchAndAddOrdered|int

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
