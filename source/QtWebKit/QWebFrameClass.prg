/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QURL
REQUEST QWEBFRAME
REQUEST QSIZE
REQUEST QWEBELEMENT
REQUEST QWEBELEMENTCOLLECTION
REQUEST QRECT
REQUEST QWEBHITTESTRESULT
REQUEST QICON
REQUEST QWEBPAGE
REQUEST QPOINT
REQUEST QWEBSECURITYORIGIN
REQUEST QVARIANT

CLASS QWebFrame INHERIT QObject

   DATA class_id INIT Class_Id_QWebFrame
   DATA self_destruction INIT .f.

   METHOD addToJavaScriptWindowObject1
   METHOD addToJavaScriptWindowObject2
   METHOD addToJavaScriptWindowObject
   METHOD baseUrl
   METHOD childFrames
   METHOD contentsSize
   METHOD documentElement
   METHOD findAllElements
   METHOD findFirstElement
   METHOD frameName
   METHOD geometry
   METHOD hasFocus
   METHOD hitTestContent
   METHOD icon
   METHOD load1
   METHOD load2
   METHOD load
   METHOD page
   METHOD parentFrame
   METHOD pos
   METHOD render1
   METHOD render2
   METHOD render3
   METHOD render
   METHOD renderTreeDump
   METHOD requestedUrl
   METHOD scroll
   METHOD scrollBarGeometry
   METHOD scrollBarMaximum
   METHOD scrollBarMinimum
   METHOD scrollBarPolicy
   METHOD scrollBarValue
   METHOD scrollPosition
   METHOD scrollToAnchor
   METHOD securityOrigin
   METHOD setContent
   METHOD setFocus
   METHOD setHtml
   METHOD setScrollBarPolicy
   METHOD setScrollBarValue
   METHOD setScrollPosition
   METHOD setTextSizeMultiplier
   METHOD setUrl
   METHOD setZoomFactor
   METHOD textSizeMultiplier
   METHOD title
   METHOD toHtml
   METHOD toPlainText
   METHOD url
   METHOD zoomFactor
   METHOD evaluateJavaScript
   METHOD print
   METHOD onContentsSizeChanged
   METHOD onIconChanged
   METHOD onInitialLayoutCompleted
   METHOD onJavaScriptWindowObjectCleared
   METHOD onLoadFinished
   METHOD onLoadStarted
   METHOD onPageChanged
   METHOD onTitleChanged
   METHOD onUrlChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
