$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QAbstractExtensionFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD extension

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractExtensionFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual QObject * extension ( QObject * object, const QString & iid ) const = 0
$virtualMethod=|QObject *|extension|QObject *,const QString &

$extraMethods

#pragma ENDDUMP
