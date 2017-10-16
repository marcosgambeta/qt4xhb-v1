$header

#include "hbclass.ch"

CLASS QToolBarChangeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD toggle

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QToolBarChangeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QToolBarChangeEvent(bool t)
*/
$constructor=|new|bool

$deleteMethod

/*
bool toggle() const
*/
$method=|bool|toggle|

#pragma ENDDUMP
