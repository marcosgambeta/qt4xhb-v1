/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QSQLDRIVER
REQUEST QSQLERROR
REQUEST QSQLRECORD
REQUEST QSQLRESULT

CLASS QSqlQuery

   DATA pointer
   DATA class_id INIT Class_Id_QSqlQuery
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD addBindValue
   METHOD at
   METHOD bindValue1
   METHOD bindValue2
   METHOD bindValue
   METHOD boundValue1
   METHOD boundValue2
   METHOD boundValue
   METHOD clear
   METHOD driver
   METHOD exec1
   METHOD exec2
   METHOD exec
   METHOD execBatch
   METHOD executedQuery
   METHOD finish
   METHOD first
   METHOD isActive
   METHOD isForwardOnly
   METHOD isNull
   METHOD isSelect
   METHOD isValid
   METHOD last
   METHOD lastError
   METHOD lastInsertId
   METHOD lastQuery
   METHOD next
   METHOD nextResult
   METHOD numRowsAffected
   METHOD numericalPrecisionPolicy
   METHOD prepare
   METHOD previous
   METHOD record
   METHOD result
   METHOD seek
   METHOD setForwardOnly
   METHOD setNumericalPrecisionPolicy
   METHOD size
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QSqlQuery
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QSqlQuery
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QSqlQuery
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QSqlQuery
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QSqlQuery
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QSqlQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
