$header

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

$destructor

#pragma BEGINDUMP

#include <QBasicAtomicInt>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
bool ref()
*/
$method=|bool|ref|

/*
bool deref()
*/
$method=|bool|deref|

/*
bool testAndSetRelaxed(int expectedValue, int newValue)
*/
$method=|bool|testAndSetRelaxed|int,int

/*
bool testAndSetAcquire(int expectedValue, int newValue)
*/
$method=|bool|testAndSetAcquire|int,int

/*
bool testAndSetRelease(int expectedValue, int newValue)
*/
$method=|bool|testAndSetRelease|int,int

/*
bool testAndSetOrdered(int expectedValue, int newValue)
*/
$method=|bool|testAndSetOrdered|int,int

/*
int fetchAndStoreRelaxed(int newValue)
*/
$method=|int|fetchAndStoreRelaxed|int

/*
int fetchAndStoreAcquire(int newValue)
*/
$method=|int|fetchAndStoreAcquire|int

/*
int fetchAndStoreRelease(int newValue)
*/
$method=|int|fetchAndStoreRelease|int

/*
int fetchAndStoreOrdered(int newValue)
*/
$method=|int|fetchAndStoreOrdered|int

/*
int fetchAndAddRelaxed(int valueToAdd)
*/
$method=|int|fetchAndAddRelaxed|int

/*
int fetchAndAddAcquire(int valueToAdd)
*/
$method=|int|fetchAndAddAcquire|int

/*
int fetchAndAddRelease(int valueToAdd)
*/
$method=|int|fetchAndAddRelease|int

/*
int fetchAndAddOrdered(int valueToAdd)
*/
$method=|int|fetchAndAddOrdered|int

/*
static bool isReferenceCountingNative()
*/
$staticMethod=|bool|isReferenceCountingNative|

/*
static bool isReferenceCountingWaitFree()
*/
$staticMethod=|bool|isReferenceCountingWaitFree|

/*
static bool isTestAndSetNative()
*/
$staticMethod=|bool|isTestAndSetNative|

/*
static bool isTestAndSetWaitFree()
*/
$staticMethod=|bool|isTestAndSetWaitFree|

/*
static bool isFetchAndStoreNative()
*/
$staticMethod=|bool|isFetchAndStoreNative|

/*
static bool isFetchAndStoreWaitFree()
*/
$staticMethod=|bool|isFetchAndStoreWaitFree|

/*
static bool isFetchAndAddNative()
*/
$staticMethod=|bool|isFetchAndAddNative|

/*
static bool isFetchAndAddWaitFree()
*/
$staticMethod=|bool|isFetchAndAddWaitFree|

$extraMethods

#pragma ENDDUMP
