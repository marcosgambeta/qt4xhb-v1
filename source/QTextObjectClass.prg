/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTDOCUMENT
REQUEST QTEXTFORMAT

CLASS QTextObject INHERIT QObject

   DATA class_id INIT Class_Id_QTextObject
   DATA self_destruction INIT .f.

   METHOD document
   METHOD format
   METHOD formatIndex
   METHOD objectIndex
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
