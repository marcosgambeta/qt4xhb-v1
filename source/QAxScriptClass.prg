/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QAXSCRIPTENGINE

CLASS QAxScript INHERIT QObject

   DATA class_id INIT Class_Id_QAxScript
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD call1
   METHOD call2
   METHOD call
   METHOD functions
   METHOD load
   METHOD scriptCode
   METHOD scriptEngine
   METHOD scriptName
   METHOD onEntered
   METHOD onError
   METHOD onFinished1
   METHOD onFinished2
   METHOD onFinished3
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxScript
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
