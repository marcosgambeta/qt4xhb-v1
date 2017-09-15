$header

#include "hbclass.ch"

CLASS QBasicTimer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD start
   METHOD stop
   METHOD timerId

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QBasicTimer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QBasicTimer ()
*/
$constructor=|new|

$deleteMethod

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
void start ( int msec, QObject * object )
*/
$method=|void|start|int,QObject *

/*
void stop ()
*/
$method=|void|stop|

/*
int timerId () const
*/
$method=|int|timerId|

$extraMethods

#pragma ENDDUMP
