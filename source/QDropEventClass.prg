/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMIMEDATA
REQUEST QPOINT
REQUEST QWIDGET
REQUEST QBYTEARRAY

CLASS QDropEvent INHERIT QEvent,QMimeSource

   DATA class_id INIT Class_Id_QDropEvent
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD acceptProposedAction
   METHOD dropAction
   METHOD keyboardModifiers
   METHOD mimeData
   METHOD mouseButtons
   METHOD pos
   METHOD possibleActions
   METHOD proposedAction
   METHOD setDropAction
   METHOD source
   METHOD encodedData
   METHOD format
   METHOD provides
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDropEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
