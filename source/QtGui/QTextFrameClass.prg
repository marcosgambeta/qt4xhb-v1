/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTFRAME
REQUEST QTEXTCURSOR
REQUEST QTEXTFRAMEFORMAT

CLASS QTextFrame INHERIT QTextObject

   DATA class_id INIT Class_Id_QTextFrame
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD childFrames
   METHOD firstCursorPosition
   METHOD firstPosition
   METHOD frameFormat
   METHOD lastCursorPosition
   METHOD lastPosition
   METHOD parentFrame
   METHOD setFrameFormat
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
