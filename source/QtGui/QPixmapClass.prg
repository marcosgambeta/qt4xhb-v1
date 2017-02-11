/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPIXMAP
REQUEST QBITMAP
REQUEST QRECT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QTRANSFORM

CLASS QPixmap INHERIT QPaintDevice

   DATA class_id INIT Class_Id_QPixmap
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD cacheKey
   METHOD convertFromImage
   METHOD copy1
   METHOD copy2
   METHOD copy
   METHOD createHeuristicMask
   METHOD createMaskFromColor1
   METHOD createMaskFromColor2
   METHOD createMaskFromColor
   METHOD depth
   METHOD detach
   METHOD fill1
   METHOD fill2
   METHOD fill3
   METHOD fill
   METHOD hasAlpha
   METHOD hasAlphaChannel
   METHOD height
   METHOD isNull
   METHOD isQBitmap
   METHOD load
   METHOD loadFromData1
   METHOD loadFromData2
   METHOD loadFromData
   METHOD mask
   METHOD rect
   METHOD save1
   METHOD save2
   METHOD save
   METHOD scaled1
   METHOD scaled2
   METHOD scaled
   METHOD scaledToHeight
   METHOD scaledToWidth
   METHOD scroll1
   METHOD scroll2
   METHOD scroll
   METHOD setMask
   METHOD size
   METHOD swap
   METHOD toImage
   METHOD transformed1
   METHOD transformed
   METHOD width
   METHOD defaultDepth
   METHOD fromImage
   METHOD fromImageReader
   METHOD grabWidget1
   METHOD grabWidget2
   METHOD grabWidget
   METHOD grabWindow
   METHOD trueMatrix1
   METHOD trueMatrix
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPixmap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
