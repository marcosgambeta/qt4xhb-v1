/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QRegExp

   DATA pointer
   DATA class_id INIT Class_Id_QRegExp
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD cap
   METHOD captureCount
   METHOD capturedTexts
   METHOD caseSensitivity
   METHOD errorString
   METHOD exactMatch
   METHOD indexIn
   METHOD isEmpty
   METHOD isMinimal
   METHOD isValid
   METHOD lastIndexIn
   METHOD matchedLength
   METHOD pattern
   METHOD patternSyntax
   METHOD pos
   METHOD setCaseSensitivity
   METHOD setMinimal
   METHOD setPattern
   METHOD setPatternSyntax
   METHOD escape
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QRegExp
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QRegExp
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QRegExp
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QRegExp
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QRegExp
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QRegExp
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
