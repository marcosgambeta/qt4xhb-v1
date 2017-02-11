/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTextListFormat INHERIT QTextFormat

   DATA class_id INIT Class_Id_QTextListFormat
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD indent
   METHOD isValid
   METHOD numberPrefix
   METHOD numberSuffix
   METHOD setIndent
   METHOD setNumberPrefix
   METHOD setNumberSuffix
   METHOD setStyle
   METHOD style
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextListFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
