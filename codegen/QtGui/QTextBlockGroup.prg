$header

#include "hbclass.ch"

CLASS QTextBlockGroup INHERIT QTextObject

   DATA self_destruction INIT .F.

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextBlockGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#pragma ENDDUMP
