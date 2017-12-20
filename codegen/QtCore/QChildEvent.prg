$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QChildEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD added
   METHOD child
   METHOD polished
   METHOD removed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QChildEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QChildEvent(Type type, QObject * child)
$constructor=|new|QEvent::Type,QObject *

$deleteMethod

$prototype=bool added() const
$method=|bool|added|

$prototype=QObject * child() const
$method=|QObject *|child|

$prototype=bool polished() const
$method=|bool|polished|

$prototype=bool removed() const
$method=|bool|removed|

#pragma ENDDUMP
