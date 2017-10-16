$header

#include "hbclass.ch"

CLASS QGraphicsTransform INHERIT QObject

   METHOD delete
   METHOD applyTo

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsTransform>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual void applyTo ( QMatrix4x4 * matrix ) const = 0
*/
$virtualMethod=|void|applyTo|QMatrix4x4 *

#pragma ENDDUMP
