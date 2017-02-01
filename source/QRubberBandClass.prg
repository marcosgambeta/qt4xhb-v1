/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QRubberBand INHERIT QWidget

   DATA class_id INIT Class_Id_QRubberBand
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD move1
   METHOD move2
   METHOD move
   METHOD resize1
   METHOD resize2
   METHOD resize
   METHOD setGeometry1
   METHOD setGeometry2
   METHOD setGeometry
   METHOD shape
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRubberBand
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
