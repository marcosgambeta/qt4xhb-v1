$header

#include "hbclass.ch"


CLASS QXmlStreamEntityResolver

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD resolveUndeclaredEntity
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlStreamEntityResolver>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QString resolveUndeclaredEntity(const QString & name)
*/
$virtualMethod=|QString|resolveUndeclaredEntity|const QString &

$extraMethods

#pragma ENDDUMP
