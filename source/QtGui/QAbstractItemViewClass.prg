/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QABSTRACTITEMDELEGATE
REQUEST QABSTRACTITEMMODEL
REQUEST QITEMSELECTIONMODEL
REQUEST QRECT
REQUEST QVARIANT

CLASS QAbstractItemView INHERIT QAbstractScrollArea

   DATA class_id INIT Class_Id_QAbstractItemView
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD alternatingRowColors
   METHOD autoScrollMargin
   METHOD closePersistentEditor
   METHOD currentIndex
   METHOD defaultDropAction
   METHOD dragDropMode
   METHOD dragDropOverwriteMode
   METHOD dragEnabled
   METHOD editTriggers
   METHOD hasAutoScroll
   METHOD horizontalScrollMode
   METHOD iconSize
   METHOD indexAt
   METHOD indexWidget
   METHOD itemDelegate1
   METHOD itemDelegate2
   METHOD itemDelegate
   METHOD itemDelegateForColumn
   METHOD itemDelegateForRow
   METHOD keyboardSearch
   METHOD model
   METHOD openPersistentEditor
   METHOD rootIndex
   METHOD scrollTo
   METHOD selectionBehavior
   METHOD selectionMode
   METHOD selectionModel
   METHOD setAlternatingRowColors
   METHOD setAutoScroll
   METHOD setAutoScrollMargin
   METHOD setDefaultDropAction
   METHOD setDragDropMode
   METHOD setDragDropOverwriteMode
   METHOD setDragEnabled
   METHOD setDropIndicatorShown
   METHOD setEditTriggers
   METHOD setHorizontalScrollMode
   METHOD setIconSize
   METHOD setIndexWidget
   METHOD setItemDelegate
   METHOD setItemDelegateForColumn
   METHOD setItemDelegateForRow
   METHOD setModel
   METHOD setSelectionBehavior
   METHOD setSelectionMode
   METHOD setSelectionModel
   METHOD setTabKeyNavigation
   METHOD setTextElideMode
   METHOD setVerticalScrollMode
   METHOD showDropIndicator
   METHOD sizeHintForColumn
   METHOD sizeHintForIndex
   METHOD sizeHintForRow
   METHOD tabKeyNavigation
   METHOD textElideMode
   METHOD verticalScrollMode
   METHOD visualRect
   METHOD inputMethodQuery
   METHOD clearSelection
   METHOD edit
   METHOD reset
   METHOD scrollToBottom
   METHOD scrollToTop
   METHOD selectAll
   METHOD setCurrentIndex
   METHOD setRootIndex
   METHOD update
   METHOD onActivated
   METHOD onClicked
   METHOD onDoubleClicked
   METHOD onEntered
   METHOD onPressed
   METHOD onViewportEntered
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractItemView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
