/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QKEYEVENT

CLASS QKeyEvent INHERIT QInputEvent

   DATA class_id INIT Class_Id_QKeyEvent
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD count
   METHOD isAutoRepeat
   METHOD key
   METHOD matches
   METHOD modifiers
   METHOD nativeModifiers
   METHOD nativeScanCode
   METHOD nativeVirtualKey
   METHOD text
   METHOD createExtendedKeyEvent
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QKeyEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
