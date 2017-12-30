$header

#include "hbclass.ch"

CLASS QInputEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD modifiers
   METHOD setModifiers

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QInputEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QInputEvent(Type type, Qt::KeyboardModifiers modifiers = Qt::NoModifier)
$method=|new|QEvent::Type,Qt::KeyboardModifiers=Qt::NoModifier

$deleteMethod

$prototype=Qt::KeyboardModifiers modifiers() const
$method=|Qt::KeyboardModifiers|modifiers|

$prototype=void setModifiers(Qt::KeyboardModifiers amodifiers)
$method=|void|setModifiers|Qt::KeyboardModifiers

#pragma ENDDUMP
