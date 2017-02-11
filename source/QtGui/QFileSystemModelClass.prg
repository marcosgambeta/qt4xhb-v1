/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QICON
REQUEST QFILEINFO
REQUEST QFILEICONPROVIDER
REQUEST QMODELINDEX
REQUEST QDATETIME
REQUEST QVARIANT
REQUEST QDIR
REQUEST QMIMEDATA

CLASS QFileSystemModel INHERIT QAbstractItemModel

   DATA class_id INIT Class_Id_QFileSystemModel
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD fileIcon
   METHOD fileInfo
   METHOD fileName
   METHOD filePath
   METHOD filter
   METHOD iconProvider
   METHOD index1
   METHOD isDir
   METHOD isReadOnly
   METHOD lastModified
   METHOD mkdir
   METHOD myComputer
   METHOD nameFilterDisables
   METHOD nameFilters
   METHOD permissions
   METHOD remove
   METHOD resolveSymlinks
   METHOD rmdir
   METHOD rootDirectory
   METHOD rootPath
   METHOD setFilter
   METHOD setIconProvider
   METHOD setNameFilterDisables
   METHOD setNameFilters
   METHOD setReadOnly
   METHOD setResolveSymlinks
   METHOD setRootPath
   METHOD size
   METHOD type
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD dropMimeData
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD headerData
   METHOD index2
   METHOD index
   METHOD mimeData
   METHOD mimeTypes
   METHOD parent
   METHOD rowCount
   METHOD setData
   METHOD sort
   METHOD supportedDropActions
   METHOD onDirectoryLoaded
   METHOD onFileRenamed
   METHOD onRootPathChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFileSystemModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
