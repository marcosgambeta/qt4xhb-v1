/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWEBHISTORY
REQUEST QICON
REQUEST QWEBPAGE
REQUEST QACTION
REQUEST QWEBSETTINGS
REQUEST QURL

CLASS QGraphicsWebView INHERIT QGraphicsWidget

   DATA class_id INIT Class_Id_QGraphicsWebView
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD findText
   METHOD history
   METHOD icon
   METHOD isModified
   METHOD isTiledBackingStoreFrozen
   METHOD load1
   METHOD load2
   METHOD load
   METHOD page
   METHOD pageAction
   METHOD resizesToContents
   METHOD setContent
   METHOD setHtml
   METHOD setPage
   METHOD setResizesToContents
   METHOD setTiledBackingStoreFrozen
   METHOD setUrl
   METHOD setZoomFactor
   METHOD settings
   METHOD title
   METHOD triggerPageAction
   METHOD url
   METHOD zoomFactor
   METHOD back
   METHOD forward
   METHOD reload
   METHOD stop
   METHOD onIconChanged
   METHOD onLinkClicked
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onStatusBarMessage
   METHOD onTitleChanged
   METHOD onUrlChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsWebView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
