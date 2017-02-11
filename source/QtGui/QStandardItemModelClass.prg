/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX
REQUEST QOBJECT
REQUEST QVARIANT
REQUEST QSTANDARDITEM
REQUEST QMIMEDATA

CLASS QStandardItemModel INHERIT QAbstractItemModel

   DATA class_id INIT Class_Id_QStandardItemModel
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD index
   METHOD parent1
   METHOD parent2
   METHOD parent
   METHOD rowCount
   METHOD columnCount
   METHOD hasChildren
   METHOD data
   METHOD setData
   METHOD headerData
   METHOD setHeaderData
   METHOD insertRows
   METHOD insertColumns
   METHOD removeRows
   METHOD removeColumns
   METHOD flags
   METHOD supportedDropActions
   METHOD clear
   METHOD sort
   METHOD itemFromIndex
   METHOD indexFromItem
   METHOD item
   METHOD setItem1
   METHOD setItem2
   METHOD setItem
   METHOD invisibleRootItem
   METHOD horizontalHeaderItem
   METHOD setHorizontalHeaderItem
   METHOD verticalHeaderItem
   METHOD setVerticalHeaderItem
   METHOD setHorizontalHeaderLabels
   METHOD setVerticalHeaderLabels
   METHOD setRowCount
   METHOD setColumnCount
   METHOD appendRow1
   METHOD appendRow2
   METHOD appendRow
   METHOD appendColumn
   METHOD insertRow1
   METHOD insertRow2
   METHOD insertRow3
   METHOD insertRow
   METHOD insertColumn1
   METHOD insertColumn2
   METHOD insertColumn
   METHOD takeItem
   METHOD takeRow
   METHOD takeColumn
   METHOD takeHorizontalHeaderItem
   METHOD takeVerticalHeaderItem
   METHOD itemPrototype
   METHOD setItemPrototype
   METHOD findItems
   METHOD sortRole
   METHOD setSortRole
   METHOD mimeTypes
   METHOD mimeData
   METHOD dropMimeData
   METHOD onItemChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStandardItemModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
