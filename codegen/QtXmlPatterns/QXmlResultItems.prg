$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLITEM
#endif

CLASS QXmlResultItems

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD current
   METHOD hasError
   METHOD next

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlResultItems>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QXmlItem>

$prototype=QXmlResultItems ()
$constructor=|new|

$deleteMethod

$prototype=QXmlItem current () const
$method=|QXmlItem|current|

$prototype=bool hasError () const
$method=|bool|hasError|

$prototype=QXmlItem next ()
$method=|QXmlItem|next|

$extraMethods

#pragma ENDDUMP
