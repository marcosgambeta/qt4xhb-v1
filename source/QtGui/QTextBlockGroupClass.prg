/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTextBlockGroup INHERIT QTextObject

   DATA class_id INIT Class_Id_QTextBlockGroup
   DATA self_destruction INIT .f.

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
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"










#pragma ENDDUMP
