/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QREGION
REQUEST QGRAPHICSITEM
REQUEST QPAINTERPATH
REQUEST QCURSOR
REQUEST QVARIANT
REQUEST QTRANSFORM
REQUEST QGRAPHICSEFFECT
REQUEST QGRAPHICSITEMGROUP
REQUEST QPOINTF
REQUEST QPOLYGONF
REQUEST QGRAPHICSOBJECT
REQUEST QGRAPHICSWIDGET
REQUEST QGRAPHICSSCENE
REQUEST QGRAPHICSTRANSFORM

CLASS QGraphicsItem

   DATA pointer
   DATA class_id INIT Class_Id_QGraphicsItem
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD acceptDrops
   METHOD acceptHoverEvents
   METHOD acceptTouchEvents
   METHOD acceptedMouseButtons
   METHOD advance
   METHOD boundingRect
   METHOD boundingRegion
   METHOD boundingRegionGranularity
   METHOD cacheMode
   METHOD childItems
   METHOD childrenBoundingRect
   METHOD clearFocus
   METHOD clipPath
   METHOD collidesWithItem
   METHOD collidesWithPath
   METHOD collidingItems
   METHOD commonAncestorItem
   METHOD contains
   METHOD cursor
   METHOD data
   METHOD deviceTransform
   METHOD effectiveOpacity
   METHOD ensureVisible1
   METHOD ensureVisible2
   METHOD ensureVisible
   METHOD filtersChildEvents
   METHOD flags
   METHOD focusItem
   METHOD focusProxy
   METHOD grabKeyboard
   METHOD grabMouse
   METHOD graphicsEffect
   METHOD group
   METHOD hasCursor
   METHOD hasFocus
   METHOD hide
   METHOD inputMethodHints
   METHOD installSceneEventFilter
   METHOD isActive
   METHOD isAncestorOf
   METHOD isClipped
   METHOD isEnabled
   METHOD isObscured1
   METHOD isObscured2
   METHOD isObscured3
   METHOD isObscured
   METHOD isObscuredBy
   METHOD isPanel
   METHOD isSelected
   METHOD isUnderMouse
   METHOD isVisible
   METHOD isVisibleTo
   METHOD isWidget
   METHOD isWindow
   METHOD itemTransform
   METHOD mapFromItem1
   METHOD mapFromItem2
   METHOD mapFromItem3
   METHOD mapFromItem4
   METHOD mapFromItem5
   METHOD mapFromItem6
   METHOD mapFromItem
   METHOD mapFromParent1
   METHOD mapFromParent2
   METHOD mapFromParent3
   METHOD mapFromParent4
   METHOD mapFromParent5
   METHOD mapFromParent6
   METHOD mapFromParent
   METHOD mapFromScene1
   METHOD mapFromScene2
   METHOD mapFromScene3
   METHOD mapFromScene4
   METHOD mapFromScene5
   METHOD mapFromScene6
   METHOD mapFromScene
   METHOD mapRectFromItem1
   METHOD mapRectFromItem2
   METHOD mapRectFromItem
   METHOD mapRectFromParent1
   METHOD mapRectFromParent2
   METHOD mapRectFromParent
   METHOD mapRectFromScene1
   METHOD mapRectFromScene2
   METHOD mapRectFromScene
   METHOD mapRectToItem1
   METHOD mapRectToItem2
   METHOD mapRectToItem
   METHOD mapRectToParent1
   METHOD mapRectToParent2
   METHOD mapRectToParent
   METHOD mapRectToScene1
   METHOD mapRectToScene2
   METHOD mapRectToScene
   METHOD mapToItem1
   METHOD mapToItem2
   METHOD mapToItem3
   METHOD mapToItem4
   METHOD mapToItem5
   METHOD mapToItem6
   METHOD mapToItem
   METHOD mapToParent1
   METHOD mapToParent2
   METHOD mapToParent3
   METHOD mapToParent4
   METHOD mapToParent5
   METHOD mapToParent6
   METHOD mapToParent
   METHOD mapToScene1
   METHOD mapToScene2
   METHOD mapToScene3
   METHOD mapToScene4
   METHOD mapToScene5
   METHOD mapToScene6
   METHOD mapToScene
   METHOD moveBy
   METHOD opacity
   METHOD opaqueArea
   METHOD paint
   METHOD panel
   METHOD panelModality
   METHOD parentItem
   METHOD parentObject
   METHOD parentWidget
   METHOD pos
   METHOD removeSceneEventFilter
   METHOD resetTransform
   METHOD rotation
   METHOD scale
   METHOD scene
   METHOD sceneBoundingRect
   METHOD scenePos
   METHOD sceneTransform
   METHOD scroll
   METHOD setAcceptDrops
   METHOD setAcceptHoverEvents
   METHOD setAcceptTouchEvents
   METHOD setAcceptedMouseButtons
   METHOD setActive
   METHOD setBoundingRegionGranularity
   METHOD setCacheMode
   METHOD setCursor
   METHOD setData
   METHOD setEnabled
   METHOD setFiltersChildEvents
   METHOD setFlag
   METHOD setFlags
   METHOD setFocus
   METHOD setFocusProxy
   METHOD setGraphicsEffect
   METHOD setGroup
   METHOD setInputMethodHints
   METHOD setOpacity
   METHOD setPanelModality
   METHOD setParentItem
   METHOD setPos1
   METHOD setPos2
   METHOD setPos
   METHOD setRotation
   METHOD setScale
   METHOD setSelected
   METHOD setToolTip
   METHOD setTransform
   METHOD setTransformOriginPoint1
   METHOD setTransformOriginPoint2
   METHOD setTransformOriginPoint
   METHOD setTransformations
   METHOD setVisible
   METHOD setX
   METHOD setY
   METHOD setZValue
   METHOD shape
   METHOD show
   METHOD stackBefore
   METHOD toGraphicsObject1
   METHOD toGraphicsObject2
   METHOD toGraphicsObject
   METHOD toolTip
   METHOD topLevelItem
   METHOD topLevelWidget
   METHOD transform
   METHOD transformOriginPoint
   METHOD transformations
   METHOD type
   METHOD ungrabKeyboard
   METHOD ungrabMouse
   METHOD unsetCursor
   METHOD update1
   METHOD update2
   METHOD update
   METHOD window
   METHOD x
   METHOD y
   METHOD zValue
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QGraphicsItem
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QGraphicsItem
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QGraphicsItem
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QGraphicsItem
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QGraphicsItem
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QGraphicsItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
