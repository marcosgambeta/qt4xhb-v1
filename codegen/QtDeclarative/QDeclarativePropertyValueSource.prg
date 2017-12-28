$header

#include "hbclass.ch"

CLASS QDeclarativePropertyValueSource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setTarget

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativePropertyValueSource>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual void setTarget ( const QDeclarativeProperty & property ) = 0
$virtualMethod=|void|setTarget|const QDeclarativeProperty &

$extraMethods

#pragma ENDDUMP
