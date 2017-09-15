$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMUTEX
#endif

CLASS QMutexLocker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD mutex
   METHOD relock
   METHOD unlock

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMutexLocker>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMutexLocker ( QMutex * mutex )
*/
$constructor=|new|QMutex *

$deleteMethod

/*
QMutex * mutex () const
*/
$method=|QMutex *|mutex|

/*
void relock ()
*/
$method=|void|relock|

/*
void unlock ()
*/
$method=|void|unlock|

$extraMethods

#pragma ENDDUMP
