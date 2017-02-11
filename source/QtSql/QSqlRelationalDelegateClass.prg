/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET

CLASS QSqlRelationalDelegate INHERIT QItemDelegate

   DATA class_id INIT Class_Id_QSqlRelationalDelegate
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD createEditor
   METHOD setEditorData
   METHOD setModelData
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlRelationalDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
