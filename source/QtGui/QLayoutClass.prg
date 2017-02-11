/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMARGINS
REQUEST QRECT
REQUEST QLAYOUTITEM
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QLAYOUT

CLASS QLayout INHERIT QObject,QLayoutItem

   DATA class_id INIT Class_Id_QLayout
   DATA class_flags INIT 4
   DATA self_destruction INIT .f.

   METHOD activate
   METHOD addItem
   METHOD addWidget
   METHOD contentsMargins
   METHOD contentsRect
   METHOD count
   METHOD expandingDirections
   METHOD getContentsMargins
   METHOD indexOf
   METHOD isEnabled
   METHOD itemAt
   METHOD maximumSize
   METHOD menuBar
   METHOD minimumSize
   METHOD parentWidget
   METHOD removeItem
   METHOD removeWidget
   METHOD setAlignment1
   METHOD setAlignment2
   METHOD setAlignment3
   METHOD setAlignment
   METHOD setContentsMargins1
   METHOD setContentsMargins2
   METHOD setContentsMargins
   METHOD setEnabled
   METHOD setMenuBar
   METHOD setSizeConstraint
   METHOD setSpacing
   METHOD sizeConstraint
   METHOD spacing
   METHOD takeAt
   METHOD update
   METHOD geometry
   METHOD invalidate
   METHOD isEmpty
   METHOD layout
   METHOD setGeometry
   METHOD closestAcceptableSize
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
