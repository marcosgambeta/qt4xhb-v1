/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDIR
REQUEST QDESIGNERFORMEDITORINTERFACE
REQUEST QDESIGNERFORMWINDOWCURSORINTERFACE
REQUEST QPOINT
REQUEST QWIDGET
REQUEST QDESIGNERFORMWINDOWINTERFACE

CLASS QDesignerFormWindowInterface INHERIT QWidget

   DATA class_id INIT Class_Id_QDesignerFormWindowInterface
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD absoluteDir
   METHOD addResourceFile
   METHOD author
   METHOD comment
   METHOD contents
   METHOD core
   METHOD cursor
   METHOD emitSelectionChanged
   METHOD exportMacro
   METHOD features
   METHOD fileName
   METHOD grid
   METHOD hasFeature
   METHOD includeHints
   METHOD isDirty
   METHOD isManaged
   METHOD layoutDefault
   METHOD mainContainer
   METHOD pixmapFunction
   METHOD removeResourceFile
   METHOD resourceFiles
   METHOD setAuthor
   METHOD setComment
   METHOD setContents1
   METHOD setExportMacro
   METHOD setIncludeHints
   METHOD setLayoutDefault
   METHOD setLayoutFunction
   METHOD setMainContainer
   METHOD setPixmapFunction
   METHOD clearSelection
   METHOD manageWidget
   METHOD selectWidget
   METHOD setContents2
   METHOD setContents
   METHOD setDirty
   METHOD setFeatures
   METHOD setFileName
   METHOD setGrid
   METHOD unmanageWidget
   METHOD findFormWindow1
   METHOD findFormWindow2
   METHOD findFormWindow
   METHOD onSelectionChanged
   METHOD onActivated
   METHOD onChanged
   METHOD onFeatureChanged
   METHOD onFileNameChanged
   METHOD onGeometryChanged
   METHOD onMainContainerChanged
   METHOD onObjectRemoved
   METHOD onWidgetManaged
   METHOD onWidgetRemoved
   METHOD onWidgetUnmanaged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerFormWindowInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
