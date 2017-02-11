/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX
REQUEST QABSTRACTITEMMODEL

CLASS QItemSelectionModel INHERIT QObject

   DATA class_id INIT Class_Id_QItemSelectionModel
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD columnIntersectsSelection
   METHOD currentIndex
   METHOD hasSelection
   METHOD isColumnSelected
   METHOD isRowSelected
   METHOD isSelected
   METHOD model
   METHOD rowIntersectsSelection
   METHOD selectedColumns
   METHOD selectedIndexes
   METHOD selectedRows
   METHOD selection
   METHOD clear
   METHOD clearSelection
   METHOD reset
   METHOD select1
   METHOD select2
   METHOD select
   METHOD setCurrentIndex
   METHOD onCurrentChanged
   METHOD onCurrentColumnChanged
   METHOD onCurrentRowChanged
   METHOD onSelectionChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QItemSelectionModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
