/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF
REQUEST QIMAGE
REQUEST QBYTEARRAY
REQUEST QPAINTERPATH
REQUEST QRAWFONT

CLASS QRawFont

   DATA pointer
   DATA class_id INIT Class_Id_QRawFont
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD advancesForGlyphIndexes1
   METHOD advancesForGlyphIndexes
   METHOD alphaMapForGlyph
   METHOD ascent
   METHOD averageCharWidth
   METHOD descent
   METHOD familyName
   METHOD fontTable
   METHOD glyphIndexesForString
   METHOD hintingPreference
   METHOD isValid
   METHOD leading
   METHOD loadFromData
   METHOD loadFromFile
   METHOD maxCharWidth
   METHOD pathForGlyph
   METHOD pixelSize
   METHOD setPixelSize
   METHOD style
   METHOD styleName
   METHOD supportedWritingSystems
   METHOD supportsCharacter1
   METHOD supportsCharacter2
   METHOD supportsCharacter
   METHOD unitsPerEm
   METHOD weight
   METHOD xHeight
   METHOD fromFont
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QRawFont
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QRawFont
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QRawFont
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QRawFont
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QRawFont
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QRawFont
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
