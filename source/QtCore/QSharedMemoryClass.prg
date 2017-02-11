/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSharedMemory INHERIT QObject

   DATA class_id INIT Class_Id_QSharedMemory
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD setKey
   METHOD key
   METHOD setNativeKey
   METHOD nativeKey
   METHOD create
   METHOD size
   METHOD attach
   METHOD isAttached
   METHOD detach
   METHOD data
   METHOD lock
   METHOD unlock
   METHOD error
   METHOD errorString
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSharedMemory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
