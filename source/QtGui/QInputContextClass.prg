/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QACTION
REQUEST QWIDGET
REQUEST QFONT
REQUEST QTEXTFORMAT

CLASS QInputContext INHERIT QObject

   DATA class_id INIT Class_Id_QInputContext
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD actions
   METHOD filterEvent
   METHOD focusWidget
   METHOD font
   METHOD identifierName
   METHOD isComposing
   METHOD language
   METHOD mouseHandler
   METHOD reset
   METHOD sendEvent
   METHOD setFocusWidget
   METHOD standardFormat
   METHOD update
   METHOD widgetDestroyed
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInputContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
