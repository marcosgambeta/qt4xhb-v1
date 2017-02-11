/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QVARIANTHASH

CLASS QAuthenticator

   DATA pointer
   DATA class_id INIT Class_Id_QAuthenticator
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD option
   METHOD options
   METHOD password
   METHOD realm
   METHOD setOption
   METHOD setPassword
   METHOD setUser
   METHOD user
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QAuthenticator
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAuthenticator
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAuthenticator
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAuthenticator
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAuthenticator
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAuthenticator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
