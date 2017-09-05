$header

#include "hbclass.ch"


CLASS QSysInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSysInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$extraMethods

#pragma ENDDUMP
