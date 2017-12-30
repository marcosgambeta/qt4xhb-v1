$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QShortcutEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD key
   METHOD shortcutId
   METHOD isAmbiguous

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QShortcutEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QShortcutEvent(const QKeySequence &key, int id, bool ambiguous = false)
$constructor=|new|const QKeySequence &,int,bool=false

$deleteMethod

$prototype=const QKeySequence &key()
$method=|const QKeySequence &|key|

$prototype=int shortcutId()
$method=|int|shortcutId|

$prototype=bool isAmbiguous()
$method=|bool|isAmbiguous|

#pragma ENDDUMP
