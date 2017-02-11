/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QNETWORKACCESSMANAGER
REQUEST QBYTEARRAY
REQUEST QNETWORKREQUEST
REQUEST QSSLCONFIGURATION
REQUEST QURL

CLASS QNetworkReply INHERIT QIODevice

   DATA class_id INIT Class_Id_QNetworkReply
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD abort
   METHOD attribute
   METHOD error
   METHOD hasRawHeader
   METHOD header
   METHOD ignoreSslErrors1
   METHOD ignoreSslErrors2
   METHOD ignoreSslErrors
   METHOD isFinished
   METHOD isRunning
   METHOD manager
   METHOD operation
   METHOD rawHeader
   METHOD rawHeaderList
   METHOD readBufferSize
   METHOD request
   METHOD setReadBufferSize
   METHOD setSslConfiguration
   METHOD sslConfiguration
   METHOD url
   METHOD close
   METHOD onDownloadProgress
   METHOD onError
   METHOD onFinished
   METHOD onMetaDataChanged
   METHOD onSslErrors
   METHOD onUploadProgress
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
