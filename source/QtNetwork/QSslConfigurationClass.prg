/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSSLCERTIFICATE
REQUEST QSSLCIPHER
REQUEST QSSLKEY
REQUEST QSSLCONFIGURATION

CLASS QSslConfiguration

   DATA pointer
   DATA class_id INIT Class_Id_QSslConfiguration
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD caCertificates
   METHOD ciphers
   METHOD isNull
   METHOD localCertificate
   METHOD peerCertificate
   METHOD peerCertificateChain
   METHOD peerVerifyDepth
   METHOD peerVerifyMode
   METHOD privateKey
   METHOD protocol
   METHOD sessionCipher
   METHOD setCaCertificates
   METHOD setCiphers
   METHOD setLocalCertificate
   METHOD setPeerVerifyDepth
   METHOD setPeerVerifyMode
   METHOD setPrivateKey
   METHOD setProtocol
   METHOD defaultConfiguration
   METHOD setDefaultConfiguration
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QSslConfiguration
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QSslConfiguration
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QSslConfiguration
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QSslConfiguration
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QSslConfiguration
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QSslConfiguration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
