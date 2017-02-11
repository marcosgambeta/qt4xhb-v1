/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QICON
REQUEST QUNDOGROUP
REQUEST QUNDOSTACK

CLASS QUndoView INHERIT QWidget

   DATA class_id INIT Class_Id_QUndoView
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD cleanIcon
   METHOD emptyLabel
   METHOD group
   METHOD setCleanIcon
   METHOD setEmptyLabel
   METHOD stack
   METHOD setGroup
   METHOD setStack
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUndoView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
