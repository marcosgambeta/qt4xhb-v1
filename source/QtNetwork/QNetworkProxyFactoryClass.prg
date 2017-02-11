/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QNETWORKPROXY

CLASS QNetworkProxyFactory

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkProxyFactory
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD queryProxy
   METHOD proxyForQuery
   METHOD setApplicationProxyFactory
   METHOD setUseSystemConfiguration
   METHOD systemProxyForQuery
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QNetworkProxyFactory
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QNetworkProxyFactory
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QNetworkProxyFactory
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QNetworkProxyFactory
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QNetworkProxyFactory
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QNetworkProxyFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
