/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QHOSTADDRESS
REQUEST QHOSTINFO

CLASS QHostInfo

   DATA pointer
   DATA class_id INIT Class_Id_QHostInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addresses
   METHOD error
   METHOD errorString
   METHOD hostName
   METHOD lookupId
   METHOD setAddresses
   METHOD setError
   METHOD setErrorString
   METHOD setHostName
   METHOD setLookupId
   METHOD abortHostLookup
   METHOD fromName
   METHOD localDomainName
   METHOD localHostName
   METHOD lookupHost
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QHostInfo
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QHostInfo
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QHostInfo
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QHostInfo
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QHostInfo
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QHostInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
