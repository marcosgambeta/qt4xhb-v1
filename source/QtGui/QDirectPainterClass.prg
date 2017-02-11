/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QREGION
REQUEST QRECT
REQUEST UCHAR

CLASS QDirectPainter INHERIT QObject

   DATA class_id INIT Class_Id_QDirectPainter
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD allocatedRegion
   METHOD endPainting1
   METHOD endPainting2
   METHOD endPainting
   METHOD flush
   METHOD geometry
   METHOD lower
   METHOD raise
   METHOD regionChanged
   METHOD requestedRegion
   METHOD setGeometry
   METHOD setRegion
   METHOD startPainting
   METHOD frameBuffer
   METHOD linestep
   METHOD lock
   METHOD screenDepth
   METHOD screenHeight
   METHOD screenWidth
   METHOD unlock
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDirectPainter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
