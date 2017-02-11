/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QOBJECT
REQUEST QBYTEARRAY
REQUEST QSSLCONFIGURATION
REQUEST QURL

CLASS QNetworkRequest

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkRequest
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD attribute
   METHOD hasRawHeader
   METHOD header
   METHOD originatingObject
   METHOD priority
   METHOD rawHeader
   METHOD rawHeaderList
   METHOD setAttribute
   METHOD setHeader
   METHOD setOriginatingObject
   METHOD setPriority
   METHOD setRawHeader
   METHOD setSslConfiguration
   METHOD setUrl
   METHOD sslConfiguration
   METHOD url
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QNetworkRequest
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QNetworkRequest
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QNetworkRequest
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QNetworkRequest
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QNetworkRequest
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QNetworkRequest
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
