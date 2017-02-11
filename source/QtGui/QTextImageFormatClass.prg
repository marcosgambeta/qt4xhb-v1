/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTextImageFormat INHERIT QTextCharFormat

   DATA class_id INIT Class_Id_QTextImageFormat
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD height
   METHOD isValid
   METHOD name
   METHOD setHeight
   METHOD setName
   METHOD setWidth
   METHOD width
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextImageFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
