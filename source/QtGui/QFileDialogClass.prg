/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDIR
REQUEST QFILEICONPROVIDER
REQUEST QABSTRACTITEMDELEGATE
REQUEST QABSTRACTPROXYMODEL
REQUEST QBYTEARRAY
REQUEST QURL

CLASS QFileDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QFileDialog
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD acceptMode
   METHOD confirmOverwrite
   METHOD defaultSuffix
   METHOD directory
   METHOD fileMode
   METHOD filter
   METHOD history
   METHOD iconProvider
   METHOD isNameFilterDetailsVisible
   METHOD isReadOnly
   METHOD itemDelegate
   METHOD labelText
   METHOD nameFilters
   METHOD open
   METHOD options
   METHOD proxyModel
   METHOD resolveSymlinks
   METHOD restoreState
   METHOD saveState
   METHOD selectFile
   METHOD selectNameFilter
   METHOD selectedFiles
   METHOD selectedNameFilter
   METHOD setAcceptMode
   METHOD setConfirmOverwrite
   METHOD setDefaultSuffix
   METHOD setDirectory1
   METHOD setDirectory2
   METHOD setDirectory
   METHOD setFileMode
   METHOD setFilter
   METHOD setHistory
   METHOD setIconProvider
   METHOD setItemDelegate
   METHOD setLabelText
   METHOD setNameFilter
   METHOD setNameFilterDetailsVisible
   METHOD setNameFilters
   METHOD setOption
   METHOD setOptions
   METHOD setProxyModel
   METHOD setReadOnly
   METHOD setResolveSymlinks
   METHOD setSidebarUrls
   METHOD setViewMode
   METHOD sidebarUrls
   METHOD testOption
   METHOD viewMode
   METHOD setVisible
   METHOD getExistingDirectory
   METHOD getOpenFileName
   METHOD getOpenFileNames
   METHOD getSaveFileName
   METHOD onCurrentChanged
   METHOD onDirectoryEntered
   METHOD onFileSelected
   METHOD onFilesSelected
   METHOD onFilterSelected
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFileDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
