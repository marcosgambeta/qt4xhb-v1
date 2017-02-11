/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QFONT
REQUEST QSIZE

CLASS QFontComboBox INHERIT QComboBox

   DATA class_id INIT Class_Id_QFontComboBox
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD currentFont
   METHOD fontFilters
   METHOD setFontFilters
   METHOD setWritingSystem
   METHOD writingSystem
   METHOD sizeHint
   METHOD setCurrentFont
   METHOD onCurrentFontChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFontComboBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
