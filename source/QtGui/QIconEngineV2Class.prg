/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE
REQUEST QICONENGINEV2

CLASS QIconEngineV2 INHERIT QIconEngine

   DATA class_id INIT Class_Id_QIconEngineV2
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD availableSizes
   METHOD clone
   METHOD iconName
   METHOD key
   METHOD read
   METHOD virtual_hook
   METHOD write
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIconEngineV2
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
