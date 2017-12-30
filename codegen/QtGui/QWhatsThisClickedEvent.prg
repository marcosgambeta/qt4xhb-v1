$header

#include "hbclass.ch"

CLASS QWhatsThisClickedEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD href

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWhatsThisClickedEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QWhatsThisClickedEvent(const QString &href)
$constructor=|new|const QString &

$deleteMethod

$prototype=QString href() const
$method=|QString|href|

#pragma ENDDUMP
