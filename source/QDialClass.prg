/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE

CLASS QDial INHERIT QAbstractSlider

   DATA class_id INIT Class_Id_QDial
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD notchSize
   METHOD notchTarget
   METHOD notchesVisible
   METHOD setNotchTarget
   METHOD wrapping
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setNotchesVisible
   METHOD setWrapping
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDial
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
