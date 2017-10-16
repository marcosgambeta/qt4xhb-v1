$header

#include "hbclass.ch"

CLASS QSqlDriverCreator INHERIT QSqlDriverCreatorBase

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlDriverCreator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#pragma ENDDUMP
