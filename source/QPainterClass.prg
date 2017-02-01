/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBRUSH
REQUEST QRECTF
REQUEST QRECT
REQUEST QPOINT
REQUEST QPAINTERPATH
REQUEST QREGION
REQUEST QTRANSFORM
REQUEST QPAINTDEVICE
REQUEST QFONT
REQUEST QFONTINFO
REQUEST QFONTMETRICS
REQUEST QPAINTENGINE
REQUEST QPEN

CLASS QPainter

   DATA pointer
   DATA class_id INIT Class_Id_QPainter
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD background
   METHOD backgroundMode
   METHOD begin
   METHOD beginNativePainting
   METHOD boundingRect1
   METHOD boundingRect2
   METHOD boundingRect3
   METHOD boundingRect4
   METHOD boundingRect
   METHOD brush
   METHOD brushOrigin
   METHOD clipPath
   METHOD clipRegion
   METHOD combinedTransform
   METHOD compositionMode
   METHOD device
   METHOD deviceTransform
   METHOD drawArc1
   METHOD drawArc2
   METHOD drawArc3
   METHOD drawArc
   METHOD drawChord1
   METHOD drawChord2
   METHOD drawChord3
   METHOD drawChord
   METHOD drawConvexPolygon3
   METHOD drawConvexPolygon4
   METHOD drawConvexPolygon
   METHOD drawEllipse1
   METHOD drawEllipse2
   METHOD drawEllipse3
   METHOD drawEllipse4
   METHOD drawEllipse5
   METHOD drawEllipse
   METHOD drawImage1
   METHOD drawImage2
   METHOD drawImage3
   METHOD drawImage4
   METHOD drawImage5
   METHOD drawImage6
   METHOD drawImage7
   METHOD drawImage8
   METHOD drawImage9
   METHOD drawImage
   METHOD drawLine1
   METHOD drawLine2
   METHOD drawLine3
   METHOD drawLine4
   METHOD drawLine5
   METHOD drawLine
   METHOD drawLines5
   METHOD drawLines6
   METHOD drawLines7
   METHOD drawLines8
   METHOD drawLines
   METHOD drawPath
   METHOD drawPicture1
   METHOD drawPicture2
   METHOD drawPicture3
   METHOD drawPicture
   METHOD drawPie1
   METHOD drawPie2
   METHOD drawPie3
   METHOD drawPie
   METHOD drawPixmap1
   METHOD drawPixmap2
   METHOD drawPixmap3
   METHOD drawPixmap4
   METHOD drawPixmap5
   METHOD drawPixmap6
   METHOD drawPixmap7
   METHOD drawPixmap8
   METHOD drawPixmap9
   METHOD drawPixmap10
   METHOD drawPixmap11
   METHOD drawPixmap
   METHOD drawPoint1
   METHOD drawPoint2
   METHOD drawPoint3
   METHOD drawPoint
   METHOD drawPoints3
   METHOD drawPoints4
   METHOD drawPoints
   METHOD drawPolygon3
   METHOD drawPolygon4
   METHOD drawPolygon
   METHOD drawPolyline3
   METHOD drawPolyline4
   METHOD drawPolyline
   METHOD drawRect1
   METHOD drawRect2
   METHOD drawRect3
   METHOD drawRect
   METHOD drawRects3
   METHOD drawRects4
   METHOD drawRects
   METHOD drawRoundedRect1
   METHOD drawRoundedRect2
   METHOD drawRoundedRect3
   METHOD drawRoundedRect
   METHOD drawStaticText1
   METHOD drawStaticText2
   METHOD drawStaticText3
   METHOD drawStaticText
   METHOD drawText1
   METHOD drawText2
   METHOD drawText3
   METHOD drawText4
   METHOD drawText5
   METHOD drawText6
   METHOD drawText7
   METHOD drawText
   METHOD drawTiledPixmap1
   METHOD drawTiledPixmap2
   METHOD drawTiledPixmap3
   METHOD drawTiledPixmap
   METHOD end
   METHOD endNativePainting
   METHOD eraseRect1
   METHOD eraseRect2
   METHOD eraseRect3
   METHOD eraseRect
   METHOD fillPath
   METHOD fillRect1
   METHOD fillRect2
   METHOD fillRect3
   METHOD fillRect4
   METHOD fillRect5
   METHOD fillRect6
   METHOD fillRect7
   METHOD fillRect8
   METHOD fillRect9
   METHOD fillRect10
   METHOD fillRect11
   METHOD fillRect12
   METHOD fillRect
   METHOD font
   METHOD fontInfo
   METHOD fontMetrics
   METHOD hasClipping
   METHOD initFrom
   METHOD isActive
   METHOD layoutDirection
   METHOD opacity
   METHOD paintEngine
   METHOD pen
   METHOD renderHints
   METHOD resetTransform
   METHOD restore
   METHOD rotate
   METHOD save
   METHOD scale
   METHOD setBackground
   METHOD setBackgroundMode
   METHOD setBrush1
   METHOD setBrush2
   METHOD setBrush
   METHOD setBrushOrigin1
   METHOD setBrushOrigin2
   METHOD setBrushOrigin3
   METHOD setBrushOrigin
   METHOD setClipPath
   METHOD setClipRect1
   METHOD setClipRect2
   METHOD setClipRect3
   METHOD setClipRect
   METHOD setClipRegion
   METHOD setClipping
   METHOD setCompositionMode
   METHOD setFont
   METHOD setLayoutDirection
   METHOD setOpacity
   METHOD setPen1
   METHOD setPen2
   METHOD setPen3
   METHOD setPen
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setTransform
   METHOD setViewTransformEnabled
   METHOD setViewport1
   METHOD setViewport2
   METHOD setViewport
   METHOD setWindow1
   METHOD setWindow2
   METHOD setWindow
   METHOD setWorldMatrixEnabled
   METHOD setWorldTransform
   METHOD shear
   METHOD strokePath
   METHOD testRenderHint
   METHOD transform
   METHOD translate1
   METHOD translate2
   METHOD translate3
   METHOD translate
   METHOD viewTransformEnabled
   METHOD viewport
   METHOD window
   METHOD worldMatrixEnabled
   METHOD worldTransform
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QPainter
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QPainter
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QPainter
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QPainter
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QPainter
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QPainter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
