/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QOBJECT

CLASS QObjectCleanupHandler INHERIT QObject

   DATA class_id INIT Class_Id_QObjectCleanupHandler
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD add
   METHOD remove
   METHOD isEmpty
   METHOD clear
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QObjectCleanupHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
