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

/*
QXmlResultItems ()
*/
$constructor=|new|

$deleteMethod

/*
QXmlItem current () const
*/
$method=|QXmlItem|current|

/*
bool hasError () const
*/
$method=|bool|hasError|

/*
QXmlItem next ()
*/
$method=|QXmlItem|next|

$extraMethods

#pragma ENDDUMP
