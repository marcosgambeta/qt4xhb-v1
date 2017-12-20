$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLOCALE
REQUEST QVARIANT
#endif

CLASS QSystemLocale

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD fallbackLocale
   METHOD query

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSystemLocale>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QSystemLocale ()
$constructor=|new|

$prototype=virtual QLocale fallbackLocale () const
$virtualMethod=|QLocale|fallbackLocale|

$prototype=virtual QVariant query ( QueryType type, QVariant in ) const
$virtualMethod=|QVariant|query|QSystemLocale::QueryType,QVariant

$extraMethods

#pragma ENDDUMP
