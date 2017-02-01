/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QSIZE
REQUEST QMATRIX
REQUEST QRECT

CLASS QSvgRenderer INHERIT QObject

   DATA class_id INIT Class_Id_QSvgRenderer
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD animated
   METHOD boundsOnElement
   METHOD defaultSize
   METHOD elementExists
   METHOD framesPerSecond
   METHOD isValid
   METHOD matrixForElement
   METHOD setFramesPerSecond
   METHOD setViewBox1
   METHOD setViewBox2
   METHOD setViewBox
   METHOD viewBox
   METHOD viewBoxF
   METHOD load1
   METHOD load2
   METHOD load3
   METHOD load
   METHOD render1
   METHOD render2
   METHOD render3
   METHOD render
   METHOD onRepaintNeeded
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSvgRenderer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
