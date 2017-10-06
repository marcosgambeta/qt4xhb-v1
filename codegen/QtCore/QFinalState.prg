$header

#include "hbclass.ch"

CLASS QFinalState INHERIT QAbstractState

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFinalState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFinalState(QState * parent = 0)
*/
$constructor=|new|QState *=0

$deleteMethod

#pragma ENDDUMP
