/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPROCESSENVIRONMENT

CLASS QProcessEnvironment

   DATA pointer
   DATA class_id INIT Class_Id_QProcessEnvironment
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD clear
   METHOD contains
   METHOD insert1
   METHOD remove
   METHOD value
   METHOD toStringList
   METHOD keys
   METHOD insert2
   METHOD insert
   METHOD systemEnvironment
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QProcessEnvironment
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QProcessEnvironment
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QProcessEnvironment
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QProcessEnvironment
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QProcessEnvironment
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QProcessEnvironment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
