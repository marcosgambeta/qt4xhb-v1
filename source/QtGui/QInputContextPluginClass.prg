/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QINPUTCONTEXT

CLASS QInputContextPlugin INHERIT QObject

   DATA class_id INIT Class_Id_QInputContextPlugin
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD create
   METHOD description
   METHOD displayName
   METHOD keys
   METHOD languages
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInputContextPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
