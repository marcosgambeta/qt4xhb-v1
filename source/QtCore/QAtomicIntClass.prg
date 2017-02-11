/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QAtomicInt

   DATA pointer
   DATA class_id INIT Class_Id_QAtomicInt
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD deref
   METHOD fetchAndAddAcquire
   METHOD fetchAndAddOrdered
   METHOD fetchAndAddRelaxed
   METHOD fetchAndAddRelease
   METHOD fetchAndStoreAcquire
   METHOD fetchAndStoreOrdered
   METHOD fetchAndStoreRelaxed
   METHOD fetchAndStoreRelease
   METHOD ref
   METHOD testAndSetAcquire
   METHOD testAndSetOrdered
   METHOD testAndSetRelaxed
   METHOD testAndSetRelease
   METHOD isFetchAndAddNative
   METHOD isFetchAndAddWaitFree
   METHOD isFetchAndStoreNative
   METHOD isFetchAndStoreWaitFree
   METHOD isReferenceCountingNative
   METHOD isReferenceCountingWaitFree
   METHOD isTestAndSetNative
   METHOD isTestAndSetWaitFree
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QAtomicInt
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAtomicInt
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAtomicInt
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAtomicInt
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAtomicInt
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAtomicInt
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
