/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPALETTE

CLASS QCDEStyle INHERIT QMotifStyle

   DATA class_id INIT Class_Id_QCDEStyle
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD drawControl
   METHOD drawPrimitive
   METHOD pixelMetric
   METHOD standardPalette
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCDEStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
