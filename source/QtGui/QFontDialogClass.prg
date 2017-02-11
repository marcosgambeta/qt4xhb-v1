/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QFONT

CLASS QFontDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QFontDialog
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD currentFont
   METHOD open
   METHOD options
   METHOD selectedFont
   METHOD setCurrentFont
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD setVisible
   METHOD getFont1
   METHOD getFont2
   METHOD getFont3
   METHOD getFont4
   METHOD getFont
   METHOD onCurrentFontChanged
   METHOD onFontSelected
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFontDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
