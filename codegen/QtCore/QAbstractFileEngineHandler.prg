$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTFILEENGINE
#endif

CLASS QAbstractFileEngineHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractFileEngineHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QAbstractFileEngine * create ( const QString & fileName ) const = 0
*/
$virtualMethod=|QAbstractFileEngine *|create|const QString &

$extraMethods

#pragma ENDDUMP
