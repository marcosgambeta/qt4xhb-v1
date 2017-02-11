/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPIXMAP

CLASS QSplashScreen INHERIT QWidget

   DATA class_id INIT Class_Id_QSplashScreen
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD finish
   METHOD pixmap
   METHOD repaint
   METHOD setPixmap
   METHOD clearMessage
   METHOD showMessage
   METHOD onMessageChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSplashScreen
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
