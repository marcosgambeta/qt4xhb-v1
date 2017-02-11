/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCOLOR

CLASS QGraphicsColorizeEffect INHERIT QGraphicsEffect

   DATA class_id INIT Class_Id_QGraphicsColorizeEffect
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD color
   METHOD strength
   METHOD setColor
   METHOD setStrength
   METHOD onColorChanged
   METHOD onStrengthChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsColorizeEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
