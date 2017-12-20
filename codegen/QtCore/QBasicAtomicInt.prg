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

$prototype=bool ref()
$method=|bool|ref|

$prototype=bool deref()
$method=|bool|deref|

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

$prototype=static bool isReferenceCountingNative()
$staticMethod=|bool|isReferenceCountingNative|

$prototype=static bool isReferenceCountingWaitFree()
$staticMethod=|bool|isReferenceCountingWaitFree|

$prototype=static bool isTestAndSetNative()
$staticMethod=|bool|isTestAndSetNative|

$prototype=static bool isTestAndSetWaitFree()
$staticMethod=|bool|isTestAndSetWaitFree|

$prototype=static bool isFetchAndStoreNative()
$staticMethod=|bool|isFetchAndStoreNative|

$prototype=static bool isFetchAndStoreWaitFree()
$staticMethod=|bool|isFetchAndStoreWaitFree|

$prototype=static bool isFetchAndAddNative()
$staticMethod=|bool|isFetchAndAddNative|

$prototype=static bool isFetchAndAddWaitFree()
$staticMethod=|bool|isFetchAndAddWaitFree|

$extraMethods

#pragma ENDDUMP
