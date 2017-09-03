/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QSqlDriverCreator INHERIT QSqlDriverCreatorBase

   DATA self_destruction INIT .F.

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlDriverCreator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSqlDriverCreator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#pragma ENDDUMP
