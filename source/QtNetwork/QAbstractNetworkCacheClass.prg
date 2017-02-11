/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QIODEVICE
REQUEST QNETWORKCACHEMETADATA

CLASS QAbstractNetworkCache INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractNetworkCache
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD cacheSize
   METHOD data
   METHOD insert
   METHOD metaData
   METHOD prepare
   METHOD remove
   METHOD updateMetaData
   METHOD clear
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractNetworkCache
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
