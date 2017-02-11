/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QITEMEDITORFACTORY
REQUEST QWIDGET
REQUEST QSIZE

CLASS QStyledItemDelegate INHERIT QAbstractItemDelegate

   DATA class_id INIT Class_Id_QStyledItemDelegate
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD displayText
   METHOD itemEditorFactory
   METHOD setItemEditorFactory
   METHOD createEditor
   METHOD paint
   METHOD setEditorData
   METHOD setModelData
   METHOD sizeHint
   METHOD updateEditorGeometry
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyledItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
