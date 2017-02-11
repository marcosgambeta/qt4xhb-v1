/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDesignerWidgetBoxInterface INHERIT QWidget

   DATA class_id INIT Class_Id_QDesignerWidgetBoxInterface
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD fileName
   METHOD load
   METHOD save
   METHOD setFileName
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerWidgetBoxInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
