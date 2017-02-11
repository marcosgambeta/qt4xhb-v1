/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QNETWORKADDRESSENTRY
REQUEST QHOSTADDRESS
REQUEST QNETWORKINTERFACE

CLASS QNetworkInterface

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkInterface
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addressEntries
   METHOD flags
   METHOD hardwareAddress
   METHOD humanReadableName
   METHOD index
   METHOD isValid
   METHOD name
   METHOD allAddresses
   METHOD allInterfaces
   METHOD interfaceFromIndex
   METHOD interfaceFromName
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QNetworkInterface
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QNetworkInterface
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QNetworkInterface
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QNetworkInterface
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QNetworkInterface
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QNetworkInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
