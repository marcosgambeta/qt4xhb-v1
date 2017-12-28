$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessiblePlugin INHERIT QObject,QAccessible

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAccessiblePlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual QAccessibleInterface * create ( const QString & key, QObject * object ) = 0
$virtualMethod=|QAccessibleInterface *|create|const QString &,QObject *

$prototype=virtual QStringList keys () const = 0
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
