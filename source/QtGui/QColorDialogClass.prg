/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCOLOR

CLASS QColorDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QColorDialog
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD currentColor
   METHOD open1
   METHOD open2
   METHOD open
   METHOD options
   METHOD selectedColor
   METHOD setCurrentColor
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD setVisible
   METHOD customColor
   METHOD customCount
   METHOD getColor1
   METHOD getColor2
   METHOD getColor
   METHOD setCustomColor
   METHOD setStandardColor
   METHOD onColorSelected
   METHOD onCurrentColorChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QColorDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
