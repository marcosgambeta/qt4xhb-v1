/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTLENGTH

CLASS QTextTableFormat INHERIT QTextFrameFormat

   DATA class_id INIT Class_Id_QTextTableFormat
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD cellPadding
   METHOD cellSpacing
   METHOD clearColumnWidthConstraints
   METHOD columnWidthConstraints
   METHOD columns
   METHOD headerRowCount
   METHOD isValid
   METHOD setAlignment
   METHOD setCellPadding
   METHOD setCellSpacing
   METHOD setColumnWidthConstraints
   METHOD setHeaderRowCount
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextTableFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
