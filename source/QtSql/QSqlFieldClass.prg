/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT

CLASS QSqlField

   DATA pointer
   DATA class_id INIT Class_Id_QSqlField
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD clear
   METHOD defaultValue
   METHOD isAutoValue
   METHOD isGenerated
   METHOD isNull
   METHOD isReadOnly
   METHOD isValid
   METHOD length
   METHOD name
   METHOD precision
   METHOD requiredStatus
   METHOD setAutoValue
   METHOD setDefaultValue
   METHOD setGenerated
   METHOD setLength
   METHOD setName
   METHOD setPrecision
   METHOD setReadOnly
   METHOD setRequired
   METHOD setRequiredStatus
   METHOD setType
   METHOD setValue
   METHOD type
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QSqlField
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QSqlField
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QSqlField
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QSqlField
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QSqlField
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QSqlField
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
