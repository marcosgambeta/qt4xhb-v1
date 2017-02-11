/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTTABLECELL
REQUEST QTEXTTABLEFORMAT
REQUEST QTEXTCURSOR

CLASS QTextTable INHERIT QTextFrame

   DATA class_id INIT Class_Id_QTextTable
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD appendColumns
   METHOD appendRows
   METHOD cellAt1
   METHOD cellAt2
   METHOD cellAt3
   METHOD cellAt
   METHOD columns
   METHOD format
   METHOD insertColumns
   METHOD insertRows
   METHOD mergeCells1
   METHOD mergeCells2
   METHOD mergeCells
   METHOD removeColumns
   METHOD removeRows
   METHOD resize
   METHOD rowEnd
   METHOD rowStart
   METHOD rows
   METHOD setFormat
   METHOD splitCell
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextTable
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
