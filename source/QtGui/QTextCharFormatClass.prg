/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QFONT
REQUEST QPEN
REQUEST QCOLOR

CLASS QTextCharFormat INHERIT QTextFormat

   DATA class_id INIT Class_Id_QTextCharFormat
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD anchorHref
   METHOD anchorNames
   METHOD font
   METHOD fontCapitalization
   METHOD fontFamily
   METHOD fontFixedPitch
   METHOD fontHintingPreference
   METHOD fontItalic
   METHOD fontKerning
   METHOD fontLetterSpacing
   METHOD fontOverline
   METHOD fontPointSize
   METHOD fontStrikeOut
   METHOD fontStyleHint
   METHOD fontStyleStrategy
   METHOD fontUnderline
   METHOD fontWeight
   METHOD fontWordSpacing
   METHOD isAnchor
   METHOD isValid
   METHOD setAnchor
   METHOD setAnchorHref
   METHOD setAnchorNames
   METHOD setFont
   METHOD setFontCapitalization
   METHOD setFontFamily
   METHOD setFontFixedPitch
   METHOD setFontHintingPreference
   METHOD setFontItalic
   METHOD setFontKerning
   METHOD setFontLetterSpacing
   METHOD setFontOverline
   METHOD setFontPointSize
   METHOD setFontStrikeOut
   METHOD setFontStyleHint
   METHOD setFontStyleStrategy
   METHOD setFontUnderline
   METHOD setFontWeight
   METHOD setFontWordSpacing
   METHOD setTextOutline
   METHOD setToolTip
   METHOD setUnderlineColor
   METHOD setUnderlineStyle
   METHOD setVerticalAlignment
   METHOD textOutline
   METHOD toolTip
   METHOD underlineColor
   METHOD underlineStyle
   METHOD verticalAlignment
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextCharFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
