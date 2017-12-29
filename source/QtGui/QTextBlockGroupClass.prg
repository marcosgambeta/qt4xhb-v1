/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QTextBlockGroup INHERIT QTextObject

   DATA self_destruction INIT .F.

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextBlockGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextBlockGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#pragma ENDDUMP
