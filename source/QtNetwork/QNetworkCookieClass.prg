/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDATETIME
REQUEST QBYTEARRAY
REQUEST QNETWORKCOOKIE

CLASS QNetworkCookie

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkCookie
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD domain
   METHOD expirationDate
   METHOD isHttpOnly
   METHOD isSecure
   METHOD isSessionCookie
   METHOD name
   METHOD path
   METHOD setDomain
   METHOD setExpirationDate
   METHOD setHttpOnly
   METHOD setName
   METHOD setPath
   METHOD setSecure
   METHOD setValue
   METHOD toRawForm
   METHOD value
   METHOD parseCookies
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QNetworkCookie
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QNetworkCookie
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QNetworkCookie
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QNetworkCookie
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QNetworkCookie
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QNetworkCookie
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
