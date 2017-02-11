/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTextBoundaryFinder

   DATA pointer
   DATA class_id INIT Class_Id_QTextBoundaryFinder
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD type
   METHOD string
   METHOD toStart
   METHOD toEnd
   METHOD position
   METHOD setPosition
   METHOD toNextBoundary
   METHOD toPreviousBoundary
   METHOD isAtBoundary
   METHOD boundaryReasons
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTextBoundaryFinder
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextBoundaryFinder
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextBoundaryFinder
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextBoundaryFinder
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextBoundaryFinder
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextBoundaryFinder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
