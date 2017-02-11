/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMETACLASSINFO
REQUEST QMETAMETHOD
REQUEST QMETAENUM
REQUEST QOBJECT
REQUEST QMETAPROPERTY
REQUEST QMETAOBJECT
REQUEST QBYTEARRAY

CLASS QMetaObject

   DATA pointer
   DATA class_id INIT Class_Id_QMetaObject
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD classInfo
   METHOD classInfoCount
   METHOD classInfoOffset
   METHOD className
   METHOD constructor
   METHOD constructorCount
   METHOD enumerator
   METHOD enumeratorCount
   METHOD enumeratorOffset
   METHOD indexOfClassInfo
   METHOD indexOfConstructor
   METHOD indexOfEnumerator
   METHOD indexOfMethod
   METHOD indexOfProperty
   METHOD indexOfSignal
   METHOD indexOfSlot
   METHOD method
   METHOD methodCount
   METHOD methodOffset
   METHOD newInstance
   METHOD property
   METHOD propertyCount
   METHOD propertyOffset
   METHOD superClass
   METHOD userProperty
   METHOD checkConnectArgs
   METHOD connectSlotsByName
   METHOD invokeMethod1
   METHOD invokeMethod2
   METHOD invokeMethod3
   METHOD invokeMethod4
   METHOD invokeMethod
   METHOD normalizedSignature
   METHOD normalizedType
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QMetaObject
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QMetaObject
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QMetaObject
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QMetaObject
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QMetaObject
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QMetaObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
