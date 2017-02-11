/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTIME

CLASS QTime

   DATA pointer
   DATA class_id INIT Class_Id_QTime
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addMSecs
   METHOD addSecs
   METHOD elapsed
   METHOD hour
   METHOD isNull
   METHOD isValid1
   METHOD minute
   METHOD msec
   METHOD msecsTo
   METHOD restart
   METHOD second
   METHOD secsTo
   METHOD setHMS
   METHOD start
   METHOD toString1
   METHOD toString2
   METHOD toString
   METHOD currentTime
   METHOD fromString1
   METHOD fromString2
   METHOD fromString
   METHOD isValid2
   METHOD isValid
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTime
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTime
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTime
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTime
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTime
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTime
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
