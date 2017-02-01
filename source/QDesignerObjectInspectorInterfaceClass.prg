/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDESIGNERFORMEDITORINTERFACE

CLASS QDesignerObjectInspectorInterface INHERIT QWidget

   DATA class_id INIT Class_Id_QDesignerObjectInspectorInterface
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD core
   METHOD setFormWindow
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerObjectInspectorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
