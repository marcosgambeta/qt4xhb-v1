/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT

CLASS QAbstractFontEngine INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractFontEngine
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD addGlyphOutlinesToPath
   METHOD capabilities
   METHOD convertStringToGlyphIndices
   METHOD fontProperty
   METHOD getGlyphAdvances
   METHOD renderGlyph
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractFontEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
