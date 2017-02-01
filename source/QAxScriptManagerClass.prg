/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QAXSCRIPT

CLASS QAxScriptManager INHERIT QObject

   DATA class_id INIT Class_Id_QAxScriptManager
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addObject1
   METHOD addObject2
   METHOD addObject
   METHOD call1
   METHOD call2
   METHOD call
   METHOD functions
   METHOD load1
   METHOD load2
   METHOD load
   METHOD script
   METHOD scriptNames
   METHOD registerEngine
   METHOD scriptFileFilter
   METHOD onError
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxScriptManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
