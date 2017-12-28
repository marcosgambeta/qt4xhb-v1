$header

#include "hbclass.ch"

CLASS QXmlLocator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD columnNumber
   METHOD lineNumber

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlLocator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual int columnNumber () const = 0
$virtualMethod=|int|columnNumber|

$prototype=virtual int lineNumber () const = 0
$virtualMethod=|int|lineNumber|

$extraMethods

#pragma ENDDUMP
