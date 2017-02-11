/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QURL

CLASS QNetworkProxyQuery

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkProxyQuery
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD localPort
   METHOD peerHostName
   METHOD peerPort
   METHOD protocolTag
   METHOD queryType
   METHOD setLocalPort
   METHOD setPeerHostName
   METHOD setPeerPort
   METHOD setProtocolTag
   METHOD setQueryType
   METHOD setUrl
   METHOD url
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QNetworkProxyQuery
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QNetworkProxyQuery
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QNetworkProxyQuery
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QNetworkProxyQuery
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QNetworkProxyQuery
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QNetworkProxyQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
