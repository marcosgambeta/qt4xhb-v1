$header

#include "hbclass.ch"

CLASS QItemEditorCreator INHERIT QItemEditorCreatorBase

   DATA self_destruction INIT .F.

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QItemEditorCreator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QItemEditorCreator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#pragma ENDDUMP
