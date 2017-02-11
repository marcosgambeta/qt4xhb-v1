/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTREEWIDGETITEM
REQUEST QWIDGET
REQUEST QRECT

CLASS QTreeWidget INHERIT QTreeView

   DATA class_id INIT Class_Id_QTreeWidget
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addTopLevelItem
   METHOD addTopLevelItems
   METHOD closePersistentEditor
   METHOD columnCount
   METHOD currentColumn
   METHOD currentItem
   METHOD editItem
   METHOD findItems
   METHOD headerItem
   METHOD indexOfTopLevelItem
   METHOD insertTopLevelItem
   METHOD insertTopLevelItems
   METHOD invisibleRootItem
   METHOD isFirstItemColumnSpanned
   METHOD itemAbove
   METHOD itemAt1
   METHOD itemAt2
   METHOD itemAt
   METHOD itemBelow
   METHOD itemWidget
   METHOD openPersistentEditor
   METHOD removeItemWidget
   METHOD selectedItems
   METHOD setColumnCount
   METHOD setCurrentItem1
   METHOD setCurrentItem2
   METHOD setCurrentItem3
   METHOD setCurrentItem
   METHOD setFirstItemColumnSpanned
   METHOD setHeaderItem
   METHOD setHeaderLabel
   METHOD setHeaderLabels
   METHOD setItemWidget
   METHOD sortColumn
   METHOD sortItems
   METHOD takeTopLevelItem
   METHOD topLevelItem
   METHOD topLevelItemCount
   METHOD visualItemRect
   METHOD setSelectionModel
   METHOD clear
   METHOD collapseItem
   METHOD expandItem
   METHOD scrollToItem
   METHOD onCurrentItemChanged
   METHOD onItemActivated
   METHOD onItemChanged
   METHOD onItemClicked
   METHOD onItemCollapsed
   METHOD onItemDoubleClicked
   METHOD onItemEntered
   METHOD onItemExpanded
   METHOD onItemPressed
   METHOD onItemSelectionChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTreeWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
