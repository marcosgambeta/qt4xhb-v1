/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QLAYOUTITEM
REQUEST QWIDGET
REQUEST QSIZE

CLASS QFormLayout INHERIT QLayout

   DATA class_id INIT Class_Id_QFormLayout
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addRow1
   METHOD addRow2
   METHOD addRow3
   METHOD addRow4
   METHOD addRow5
   METHOD addRow6
   METHOD addRow
   METHOD fieldGrowthPolicy
   METHOD formAlignment
   METHOD getItemPosition
   METHOD getLayoutPosition
   METHOD getWidgetPosition
   METHOD horizontalSpacing
   METHOD insertRow1
   METHOD insertRow2
   METHOD insertRow3
   METHOD insertRow4
   METHOD insertRow5
   METHOD insertRow6
   METHOD insertRow
   METHOD itemAt1
   METHOD labelAlignment
   METHOD labelForField1
   METHOD labelForField2
   METHOD labelForField
   METHOD rowCount
   METHOD rowWrapPolicy
   METHOD setFieldGrowthPolicy
   METHOD setFormAlignment
   METHOD setHorizontalSpacing
   METHOD setItem
   METHOD setLabelAlignment
   METHOD setLayout
   METHOD setRowWrapPolicy
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD setWidget
   METHOD spacing
   METHOD verticalSpacing
   METHOD addItem
   METHOD count
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD itemAt2
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD takeAt
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFormLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
