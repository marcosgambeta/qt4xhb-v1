$header

#include "hbclass.ch"

CLASS QWaitCondition

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD wakeAll
   METHOD wakeOne

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWaitCondition>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWaitCondition ()
*/
$constructor=|new|

$deleteMethod

/*
void wakeAll ()
*/
$method=|void|wakeAll|

/*
void wakeOne ()
*/
$method=|void|wakeOne|

$extraMethods

#pragma ENDDUMP
