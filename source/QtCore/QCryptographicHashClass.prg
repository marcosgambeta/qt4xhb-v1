/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY

CLASS QCryptographicHash

   DATA pointer
   DATA class_id INIT Class_Id_QCryptographicHash
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addData1
   METHOD addData2
   METHOD addData
   METHOD reset
   METHOD result
   METHOD hash
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QCryptographicHash
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QCryptographicHash
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QCryptographicHash
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QCryptographicHash
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QCryptographicHash
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QCryptographicHash
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
