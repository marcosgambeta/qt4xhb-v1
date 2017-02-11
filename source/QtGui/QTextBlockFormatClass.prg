/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTextBlockFormat INHERIT QTextFormat

   DATA class_id INIT Class_Id_QTextBlockFormat
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD bottomMargin
   METHOD indent
   METHOD isValid
   METHOD leftMargin
   METHOD lineHeight1
   METHOD lineHeight2
   METHOD lineHeight
   METHOD lineHeightType
   METHOD nonBreakableLines
   METHOD pageBreakPolicy
   METHOD rightMargin
   METHOD setAlignment
   METHOD setBottomMargin
   METHOD setIndent
   METHOD setLeftMargin
   METHOD setLineHeight
   METHOD setNonBreakableLines
   METHOD setPageBreakPolicy
   METHOD setRightMargin
   METHOD setTextIndent
   METHOD setTopMargin
   METHOD textIndent
   METHOD topMargin
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextBlockFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
