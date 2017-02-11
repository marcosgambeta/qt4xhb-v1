/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QNETWORKCONFIGURATION
REQUEST QABSTRACTNETWORKCACHE
REQUEST QNETWORKCOOKIEJAR
REQUEST QNETWORKREPLY
REQUEST QNETWORKPROXY
REQUEST QNETWORKPROXYFACTORY

CLASS QNetworkAccessManager INHERIT QObject

   DATA class_id INIT Class_Id_QNetworkAccessManager
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD activeConfiguration
   METHOD cache
   METHOD configuration
   METHOD cookieJar
   METHOD deleteResource
   METHOD get
   METHOD head
   METHOD networkAccessible
   METHOD post1
   METHOD post2
   METHOD post
   METHOD proxy
   METHOD proxyFactory
   METHOD put1
   METHOD put2
   METHOD put
   METHOD sendCustomRequest
   METHOD setCache
   METHOD setConfiguration
   METHOD setCookieJar
   METHOD setNetworkAccessible
   METHOD setProxy
   METHOD setProxyFactory
   METHOD onAuthenticationRequired
   METHOD onFinished
   METHOD onNetworkAccessibleChanged
   METHOD onProxyAuthenticationRequired
   METHOD onSslErrors
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkAccessManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
