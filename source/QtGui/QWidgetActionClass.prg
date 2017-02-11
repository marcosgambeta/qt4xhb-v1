/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET

CLASS QWidgetAction INHERIT QAction

   DATA class_id INIT Class_Id_QWidgetAction
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD defaultWidget
   METHOD releaseWidget
   METHOD requestWidget
   METHOD setDefaultWidget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWidgetAction
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
