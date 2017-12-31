/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
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
#endif

CLASS QGraphicsItem

   DATA pointer
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QGraphicsItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QCursor>

HB_FUNC_STATIC( QGRAPHICSITEM_DELETE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool acceptDrops () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ACCEPTDROPS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->acceptDrops () );
  }
}

/*
bool acceptHoverEvents () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ACCEPTHOVEREVENTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->acceptHoverEvents () );
  }
}

/*
bool acceptTouchEvents () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ACCEPTTOUCHEVENTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->acceptTouchEvents () );
  }
}

/*
Qt::MouseButtons acceptedMouseButtons () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ACCEPTEDMOUSEBUTTONS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->acceptedMouseButtons () );
  }
}

/*
virtual void advance ( int phase )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ADVANCE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->advance ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRectF boundingRect () const = 0
*/
HB_FUNC_STATIC( QGRAPHICSITEM_BOUNDINGRECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRegion boundingRegion ( const QTransform & itemToDeviceTransform ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_BOUNDINGREGION )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->boundingRegion ( *PQTRANSFORM(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
qreal boundingRegionGranularity () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_BOUNDINGREGIONGRANULARITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->boundingRegionGranularity () );
  }
}

/*
CacheMode cacheMode () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CACHEMODE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->cacheMode () );
  }
}

/*
QList<QGraphicsItem *> childItems () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CHILDITEMS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QGraphicsItem *> list = obj->childItems ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QRectF childrenBoundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CHILDRENBOUNDINGRECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->childrenBoundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void clearFocus ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CLEARFOCUS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearFocus ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPainterPath clipPath () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CLIPPATH )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->clipPath () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual bool collidesWithItem ( const QGraphicsItem * other, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_COLLIDESWITHITEM )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) Qt::IntersectsItemShape : hb_parni(2);
    RBOOL( obj->collidesWithItem ( par1, (Qt::ItemSelectionMode) par2 ) );
  }
}

/*
virtual bool collidesWithPath ( const QPainterPath & path, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_COLLIDESWITHPATH )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::IntersectsItemShape : hb_parni(2);
    RBOOL( obj->collidesWithPath ( *PQPAINTERPATH(1), (Qt::ItemSelectionMode) par2 ) );
  }
}

/*
QList<QGraphicsItem *> collidingItems ( Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_COLLIDINGITEMS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::IntersectsItemShape : hb_parni(1);
    QList<QGraphicsItem *> list = obj->collidingItems ( (Qt::ItemSelectionMode) par1 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QGraphicsItem * commonAncestorItem ( const QGraphicsItem * other ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_COMMONANCESTORITEM )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGraphicsItem * ptr = obj->commonAncestorItem ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CONTAINS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( *PQPOINTF(1) ) );
  }
}

/*
QCursor cursor () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CURSOR )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QCursor * ptr = new QCursor( obj->cursor () );
    _qt4xhb_createReturnClass ( ptr, "QCURSOR", true );
  }
}

/*
QVariant data ( int key ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_DATA )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QTransform deviceTransform ( const QTransform & viewportTransform ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_DEVICETRANSFORM )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->deviceTransform ( *PQTRANSFORM(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

/*
qreal effectiveOpacity () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_EFFECTIVEOPACITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->effectiveOpacity () );
  }
}

/*
void ensureVisible ( const QRectF & rect = QRectF(), int xmargin = 50, int ymargin = 50 )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ENSUREVISIBLE1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF par1 = ISNIL(1)? QRectF() : *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->ensureVisible ( par1, OPINT(2,50), OPINT(3,50) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ENSUREVISIBLE2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ensureVisible ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), OPINT(5,50), OPINT(6,50) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void ensureVisible ( const QRectF & rect = QRectF(), int xmargin = 50, int ymargin = 50 )
//[2]void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )

HB_FUNC_STATIC( QGRAPHICSITEM_ENSUREVISIBLE )
{
  if( ISBETWEEN(0,3) && (ISQRECTF(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_ENSUREVISIBLE1 );
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_ENSUREVISIBLE2 );
  }
}

/*
bool filtersChildEvents () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_FILTERSCHILDEVENTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->filtersChildEvents () );
  }
}

/*
GraphicsItemFlags flags () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_FLAGS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags () );
  }
}

/*
QGraphicsItem * focusItem () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_FOCUSITEM )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * ptr = obj->focusItem ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
QGraphicsItem * focusProxy () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_FOCUSPROXY )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * ptr = obj->focusProxy ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
void grabKeyboard ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_GRABKEYBOARD )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->grabKeyboard ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabMouse ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_GRABMOUSE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->grabMouse ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QGraphicsEffect * graphicsEffect () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_GRAPHICSEFFECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsEffect * ptr = obj->graphicsEffect ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSEFFECT" );
  }
}

/*
QGraphicsItemGroup * group () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_GROUP )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItemGroup * ptr = obj->group ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEMGROUP" );
  }
}

/*
bool hasCursor () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_HASCURSOR )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasCursor () );
  }
}

/*
bool hasFocus () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_HASFOCUS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasFocus () );
  }
}

/*
void hide ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_HIDE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->hide ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::InputMethodHints inputMethodHints () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_INPUTMETHODHINTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->inputMethodHints () );
  }
}

/*
void installSceneEventFilter ( QGraphicsItem * filterItem )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_INSTALLSCENEEVENTFILTER )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->installSceneEventFilter ( PQGRAPHICSITEM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isActive () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISACTIVE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isActive () );
  }
}

/*
bool isAncestorOf ( const QGraphicsItem * child ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISANCESTOROF )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->isAncestorOf ( par1 ) );
  }
}

/*
bool isClipped () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISCLIPPED )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isClipped () );
  }
}

/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISENABLED )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEnabled () );
  }
}

/*
bool isObscured () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISOBSCURED1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isObscured () );
  }
}

/*
bool isObscured ( qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISOBSCURED2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isObscured ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
  }
}

/*
bool isObscured ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISOBSCURED3 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isObscured ( *PQRECTF(1) ) );
  }
}

//[1]bool isObscured () const
//[2]bool isObscured ( qreal x, qreal y, qreal w, qreal h ) const
//[3]bool isObscured ( const QRectF & rect ) const

HB_FUNC_STATIC( QGRAPHICSITEM_ISOBSCURED )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_ISOBSCURED1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_ISOBSCURED2 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_ISOBSCURED3 );
  }
}

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISOBSCUREDBY )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->isObscuredBy ( par1 ) );
  }
}

/*
bool isPanel () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISPANEL )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isPanel () );
  }
}

/*
bool isSelected () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISSELECTED )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSelected () );
  }
}

/*
bool isUnderMouse () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISUNDERMOUSE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isUnderMouse () );
  }
}

/*
bool isVisible () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISVISIBLE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isVisible () );
  }
}

/*
bool isVisibleTo ( const QGraphicsItem * parent ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISVISIBLETO )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->isVisibleTo ( par1 ) );
  }
}

/*
bool isWidget () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISWIDGET )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isWidget () );
  }
}

/*
bool isWindow () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISWINDOW )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isWindow () );
  }
}

/*
QTransform itemTransform ( const QGraphicsItem * other, bool * ok = 0 ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ITEMTRANSFORM )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool par2;
    QTransform * ptr = new QTransform( obj->itemTransform ( par1, &par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
    hb_storl( par2, 2 );
  }
}

/*
QPointF mapFromItem ( const QGraphicsItem * item, const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMITEM1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPointF * ptr = new QPointF( obj->mapFromItem ( par1, *PQPOINTF(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMITEM2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygonF * ptr = new QPolygonF( obj->mapFromItem ( par1, *PQRECTF(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapFromItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMITEM3 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygonF * ptr = new QPolygonF( obj->mapFromItem ( par1, *PQPOLYGONF(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapFromItem ( const QGraphicsItem * item, const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMITEM4 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPainterPath * ptr = new QPainterPath( obj->mapFromItem ( par1, *PQPAINTERPATH(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPolygonF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMITEM5 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygonF * ptr = new QPolygonF( obj->mapFromItem ( par1, PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPointF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMITEM6 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPointF * ptr = new QPointF( obj->mapFromItem ( par1, PQREAL(2), PQREAL(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

//[1]QPointF mapFromItem ( const QGraphicsItem * item, const QPointF & point ) const
//[2]QPolygonF mapFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
//[3]QPolygonF mapFromItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
//[4]QPainterPath mapFromItem ( const QGraphicsItem * item, const QPainterPath & path ) const
//[5]QPolygonF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
//[6]QPointF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMITEM )
{
  if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPOINTF(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMITEM1 );
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQRECTF(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMITEM2 );
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPOLYGONF(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMITEM3 );
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPAINTERPATH(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMITEM4 );
  }
  else if( ISNUMPAR(5) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMITEM5 );
  }
  else if( ISNUMPAR(3) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMITEM6 );
  }
}

/*
QPointF mapFromParent ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMPARENT1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapFromParent ( *PQPOINTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapFromParent ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMPARENT2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapFromParent ( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapFromParent ( const QPolygonF & polygon ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMPARENT3 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapFromParent ( *PQPOLYGONF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapFromParent ( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMPARENT4 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->mapFromParent ( *PQPAINTERPATH(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPolygonF mapFromParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMPARENT5 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapFromParent ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPointF mapFromParent ( qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMPARENT6 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapFromParent ( PQREAL(1), PQREAL(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

//[1]QPointF mapFromParent ( const QPointF & point ) const
//[2]QPolygonF mapFromParent ( const QRectF & rect ) const
//[3]QPolygonF mapFromParent ( const QPolygonF & polygon ) const
//[4]QPainterPath mapFromParent ( const QPainterPath & path ) const
//[5]QPolygonF mapFromParent ( qreal x, qreal y, qreal w, qreal h ) const
//[6]QPointF mapFromParent ( qreal x, qreal y ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMPARENT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMPARENT1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMPARENT2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMPARENT3 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMPARENT4 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMPARENT5 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMPARENT6 );
  }
}

/*
QPointF mapFromScene ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMSCENE1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapFromScene ( *PQPOINTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapFromScene ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMSCENE2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapFromScene ( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapFromScene ( const QPolygonF & polygon ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMSCENE3 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapFromScene ( *PQPOLYGONF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapFromScene ( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMSCENE4 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->mapFromScene ( *PQPAINTERPATH(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPolygonF mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMSCENE5 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapFromScene ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPointF mapFromScene ( qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMSCENE6 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapFromScene ( PQREAL(1), PQREAL(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

//[1]QPointF mapFromScene ( const QPointF & point ) const
//[2]QPolygonF mapFromScene ( const QRectF & rect ) const
//[3]QPolygonF mapFromScene ( const QPolygonF & polygon ) const
//[4]QPainterPath mapFromScene ( const QPainterPath & path ) const
//[5]QPolygonF mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
//[6]QPointF mapFromScene ( qreal x, qreal y ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMSCENE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMSCENE1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMSCENE2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMSCENE3 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMSCENE4 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMSCENE5 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPFROMSCENE6 );
  }
}

/*
QRectF mapRectFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMITEM1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * ptr = new QRectF( obj->mapRectFromItem ( par1, *PQRECTF(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF mapRectFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMITEM2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * ptr = new QRectF( obj->mapRectFromItem ( par1, PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

//[1]QRectF mapRectFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
//[2]QRectF mapRectFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMITEM )
{
  if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQRECTF(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPRECTFROMITEM1 );
  }
  else if( ISNUMPAR(5) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPRECTFROMITEM2 );
  }
}

/*
QRectF mapRectFromParent ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMPARENT1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRectFromParent ( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF mapRectFromParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMPARENT2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRectFromParent ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

//[1]QRectF mapRectFromParent ( const QRectF & rect ) const
//[2]QRectF mapRectFromParent ( qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMPARENT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPRECTFROMPARENT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPRECTFROMPARENT2 );
  }
}

/*
QRectF mapRectFromScene ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMSCENE1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRectFromScene ( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF mapRectFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMSCENE2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRectFromScene ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

//[1]QRectF mapRectFromScene ( const QRectF & rect ) const
//[2]QRectF mapRectFromScene ( qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMSCENE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPRECTFROMSCENE1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPRECTFROMSCENE2 );
  }
}

/*
QRectF mapRectToItem ( const QGraphicsItem * item, const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOITEM1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * ptr = new QRectF( obj->mapRectToItem ( par1, *PQRECTF(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF mapRectToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOITEM2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * ptr = new QRectF( obj->mapRectToItem ( par1, PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

//[1]QRectF mapRectToItem ( const QGraphicsItem * item, const QRectF & rect ) const
//[2]QRectF mapRectToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOITEM )
{
  if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQRECTF(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPRECTTOITEM1 );
  }
  else if( ISNUMPAR(5) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPRECTTOITEM2 );
  }
}

/*
QRectF mapRectToParent ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOPARENT1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRectToParent ( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF mapRectToParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOPARENT2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRectToParent ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

//[1]QRectF mapRectToParent ( const QRectF & rect ) const
//[2]QRectF mapRectToParent ( qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOPARENT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPRECTTOPARENT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPRECTTOPARENT2 );
  }
}

/*
QRectF mapRectToScene ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOSCENE1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRectToScene ( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF mapRectToScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOSCENE2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRectToScene ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

//[1]QRectF mapRectToScene ( const QRectF & rect ) const
//[2]QRectF mapRectToScene ( qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOSCENE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPRECTTOSCENE1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPRECTTOSCENE2 );
  }
}

/*
QPointF mapToItem ( const QGraphicsItem * item, const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOITEM1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPointF * ptr = new QPointF( obj->mapToItem ( par1, *PQPOINTF(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapToItem ( const QGraphicsItem * item, const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOITEM2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygonF * ptr = new QPolygonF( obj->mapToItem ( par1, *PQRECTF(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapToItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOITEM3 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygonF * ptr = new QPolygonF( obj->mapToItem ( par1, *PQPOLYGONF(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapToItem ( const QGraphicsItem * item, const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOITEM4 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPainterPath * ptr = new QPainterPath( obj->mapToItem ( par1, *PQPAINTERPATH(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPolygonF mapToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOITEM5 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygonF * ptr = new QPolygonF( obj->mapToItem ( par1, PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPointF mapToItem ( const QGraphicsItem * item, qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOITEM6 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPointF * ptr = new QPointF( obj->mapToItem ( par1, PQREAL(2), PQREAL(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

//[1]QPointF mapToItem ( const QGraphicsItem * item, const QPointF & point ) const
//[2]QPolygonF mapToItem ( const QGraphicsItem * item, const QRectF & rect ) const
//[3]QPolygonF mapToItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
//[4]QPainterPath mapToItem ( const QGraphicsItem * item, const QPainterPath & path ) const
//[5]QPolygonF mapToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
//[6]QPointF mapToItem ( const QGraphicsItem * item, qreal x, qreal y ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOITEM )
{
  if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPOINTF(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOITEM1 );
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQRECTF(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOITEM2 );
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPOLYGONF(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOITEM3 );
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPAINTERPATH(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOITEM4 );
  }
  else if( ISNUMPAR(5) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOITEM5 );
  }
  else if( ISNUMPAR(3) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOITEM6 );
  }
}

/*
QPointF mapToParent ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOPARENT1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapToParent ( *PQPOINTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapToParent ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOPARENT2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToParent ( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapToParent ( const QPolygonF & polygon ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOPARENT3 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToParent ( *PQPOLYGONF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapToParent ( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOPARENT4 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->mapToParent ( *PQPAINTERPATH(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPolygonF mapToParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOPARENT5 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToParent ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPointF mapToParent ( qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOPARENT6 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapToParent ( PQREAL(1), PQREAL(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

//[1]QPointF mapToParent ( const QPointF & point ) const
//[2]QPolygonF mapToParent ( const QRectF & rect ) const
//[3]QPolygonF mapToParent ( const QPolygonF & polygon ) const
//[4]QPainterPath mapToParent ( const QPainterPath & path ) const
//[5]QPolygonF mapToParent ( qreal x, qreal y, qreal w, qreal h ) const
//[6]QPointF mapToParent ( qreal x, qreal y ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOPARENT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOPARENT1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOPARENT2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOPARENT3 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOPARENT4 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOPARENT5 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOPARENT6 );
  }
}

/*
QPointF mapToScene ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOSCENE1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapToScene ( *PQPOINTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapToScene ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOSCENE2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapToScene ( const QPolygonF & polygon ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOSCENE3 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( *PQPOLYGONF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapToScene ( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOSCENE4 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->mapToScene ( *PQPAINTERPATH(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPolygonF mapToScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOSCENE5 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPointF mapToScene ( qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOSCENE6 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapToScene ( PQREAL(1), PQREAL(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

//[1]QPointF mapToScene ( const QPointF & point ) const
//[2]QPolygonF mapToScene ( const QRectF & rect ) const
//[3]QPolygonF mapToScene ( const QPolygonF & polygon ) const
//[4]QPainterPath mapToScene ( const QPainterPath & path ) const
//[5]QPolygonF mapToScene ( qreal x, qreal y, qreal w, qreal h ) const
//[6]QPointF mapToScene ( qreal x, qreal y ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOSCENE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOSCENE1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOSCENE2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOSCENE3 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOSCENE4 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOSCENE5 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_MAPTOSCENE6 );
  }
}

/*
void moveBy ( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_MOVEBY )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveBy ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal opacity () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_OPACITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->opacity () );
  }
}

/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_OPAQUEAREA )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 ) = 0
*/
HB_FUNC_STATIC( QGRAPHICSITEM_PAINT )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->paint ( PQPAINTER(1), par2, OPQWIDGET(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QGraphicsItem * panel () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_PANEL )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * ptr = obj->panel ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
PanelModality panelModality () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_PANELMODALITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->panelModality () );
  }
}

/*
QGraphicsItem * parentItem () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_PARENTITEM )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * ptr = obj->parentItem ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
QGraphicsObject * parentObject () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_PARENTOBJECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsObject * ptr = obj->parentObject ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSOBJECT" );
  }
}

/*
QGraphicsWidget * parentWidget () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_PARENTWIDGET )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsWidget * ptr = obj->parentWidget ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSWIDGET" );
  }
}

/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_POS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void removeSceneEventFilter ( QGraphicsItem * filterItem )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_REMOVESCENEEVENTFILTER )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeSceneEventFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resetTransform ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_RESETTRANSFORM )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resetTransform ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal rotation () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ROTATION )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->rotation () );
  }
}

/*
qreal scale () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SCALE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->scale () );
  }
}

/*
QGraphicsScene * scene () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SCENE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsScene * ptr = obj->scene ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSSCENE" );
  }
}

/*
QRectF sceneBoundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SCENEBOUNDINGRECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->sceneBoundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SCENEPOS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QTransform sceneTransform () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SCENETRANSFORM )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->sceneTransform () );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

/*
void scroll ( qreal dx, qreal dy, const QRectF & rect = QRectF() )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SCROLL )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF par3 = ISNIL(3)? QRectF() : *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->scroll ( PQREAL(1), PQREAL(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAcceptDrops ( bool on )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETACCEPTDROPS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAcceptDrops ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAcceptHoverEvents ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETACCEPTHOVEREVENTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAcceptHoverEvents ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAcceptTouchEvents ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETACCEPTTOUCHEVENTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAcceptTouchEvents ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAcceptedMouseButtons ( Qt::MouseButtons buttons )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETACCEPTEDMOUSEBUTTONS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAcceptedMouseButtons ( (Qt::MouseButtons) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setActive ( bool active )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETACTIVE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setActive ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBoundingRegionGranularity ( qreal granularity )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETBOUNDINGREGIONGRANULARITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBoundingRegionGranularity ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCacheMode ( CacheMode mode, const QSize & logicalCacheSize = QSize() )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETCACHEMODE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QSize par2 = ISNIL(2)? QSize() : *(QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCacheMode ( (QGraphicsItem::CacheMode) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCursor ( const QCursor & cursor )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETCURSOR )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCursor ( *PQCURSOR(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setData ( int key, const QVariant & value )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETDATA )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setData ( PINT(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEnabled ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETENABLED )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFiltersChildEvents ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETFILTERSCHILDEVENTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFiltersChildEvents ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlag ( GraphicsItemFlag flag, bool enabled = true )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETFLAG )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlag ( (QGraphicsItem::GraphicsItemFlag) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlags ( GraphicsItemFlags flags )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETFLAGS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlags ( (QGraphicsItem::GraphicsItemFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocus ( Qt::FocusReason focusReason = Qt::OtherFocusReason )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETFOCUS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::OtherFocusReason : hb_parni(1);
    obj->setFocus ( (Qt::FocusReason) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocusProxy ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETFOCUSPROXY )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFocusProxy ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGraphicsEffect ( QGraphicsEffect * effect )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETGRAPHICSEFFECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsEffect * par1 = (QGraphicsEffect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setGraphicsEffect ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGroup ( QGraphicsItemGroup * group )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETGROUP )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItemGroup * par1 = (QGraphicsItemGroup *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setGroup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInputMethodHints ( Qt::InputMethodHints hints )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETINPUTMETHODHINTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setInputMethodHints ( (Qt::InputMethodHints) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOpacity ( qreal opacity )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETOPACITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOpacity ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPanelModality ( PanelModality panelModality )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETPANELMODALITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPanelModality ( (QGraphicsItem::PanelModality) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setParentItem ( QGraphicsItem * newParent )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETPARENTITEM )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setParentItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPos ( const QPointF & pos )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETPOS1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPos ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPos ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETPOS2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPos ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setPos ( const QPointF & pos )
//[2]void setPos ( qreal x, qreal y )

HB_FUNC_STATIC( QGRAPHICSITEM_SETPOS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_SETPOS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_SETPOS2 );
  }
}

/*
void setRotation ( qreal angle )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETROTATION )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRotation ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScale ( qreal factor )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETSCALE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setScale ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelected ( bool selected )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETSELECTED )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSelected ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolTip ( const QString & toolTip )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETTOOLTIP )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setToolTip ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTransform ( const QTransform & matrix, bool combine = false )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETTRANSFORM )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTransform ( *PQTRANSFORM(1), OPBOOL(2,false) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTransformOriginPoint ( const QPointF & origin )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETTRANSFORMORIGINPOINT1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTransformOriginPoint ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTransformOriginPoint ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETTRANSFORMORIGINPOINT2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTransformOriginPoint ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setTransformOriginPoint ( const QPointF & origin )
//[2]void setTransformOriginPoint ( qreal x, qreal y )

HB_FUNC_STATIC( QGRAPHICSITEM_SETTRANSFORMORIGINPOINT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_SETTRANSFORMORIGINPOINT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_SETTRANSFORMORIGINPOINT2 );
  }
}

/*
void setTransformations ( const QList<QGraphicsTransform *> & transformations )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETTRANSFORMATIONS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QGraphicsTransform *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << (QGraphicsTransform *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
    obj->setTransformations ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETVISIBLE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setX ( qreal x )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETX )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setX ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setY ( qreal y )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETY )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setY ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setZValue ( qreal z )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETZVALUE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setZValue ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SHAPE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
void show ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SHOW )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->show ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stackBefore ( const QGraphicsItem * sibling )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_STACKBEFORE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->stackBefore ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QGraphicsObject * toGraphicsObject ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TOGRAPHICSOBJECT1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsObject * ptr = obj->toGraphicsObject ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSOBJECT" );
  }
}

/*
const QGraphicsObject * toGraphicsObject () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TOGRAPHICSOBJECT2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsObject * ptr = obj->toGraphicsObject ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSOBJECT" );
  }
}

//[1]QGraphicsObject * toGraphicsObject ()
//[2]const QGraphicsObject * toGraphicsObject () const

HB_FUNC_STATIC( QGRAPHICSITEM_TOGRAPHICSOBJECT )
{
  HB_FUNC_EXEC( QGRAPHICSITEM_TOGRAPHICSOBJECT1 );
}

/*
QString toolTip () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TOOLTIP )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->toolTip () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QGraphicsItem * topLevelItem () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TOPLEVELITEM )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * ptr = obj->topLevelItem ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
QGraphicsWidget * topLevelWidget () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TOPLEVELWIDGET )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsWidget * ptr = obj->topLevelWidget ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSWIDGET" );
  }
}

/*
QTransform transform () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TRANSFORM )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->transform () );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

/*
QPointF transformOriginPoint () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TRANSFORMORIGINPOINT )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->transformOriginPoint () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QList<QGraphicsTransform *> transformations () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TRANSFORMATIONS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QGraphicsTransform *> list = obj->transformations ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGRAPHICSTRANSFORM" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGraphicsTransform *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TYPE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->type () );
  }
}

/*
void ungrabKeyboard ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_UNGRABKEYBOARD )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ungrabKeyboard ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ungrabMouse ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_UNGRABMOUSE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ungrabMouse ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unsetCursor ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_UNSETCURSOR )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unsetCursor ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ( const QRectF & rect = QRectF() )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_UPDATE1 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF par1 = ISNIL(1)? QRectF() : *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->update ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ( qreal x, qreal y, qreal width, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_UPDATE2 )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->update ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void update ( const QRectF & rect = QRectF() )
//[2]void update ( qreal x, qreal y, qreal width, qreal height )

HB_FUNC_STATIC( QGRAPHICSITEM_UPDATE )
{
  if( ISBETWEEN(0,1) && (ISQRECTF(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_UPDATE1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSITEM_UPDATE2 );
  }
}

/*
QGraphicsWidget * window () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_WINDOW )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsWidget * ptr = obj->window ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSWIDGET" );
  }
}

/*
qreal x () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_X )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->x () );
  }
}

/*
qreal y () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_Y )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->y () );
  }
}

/*
qreal zValue () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ZVALUE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->zValue () );
  }
}

HB_FUNC_STATIC( QGRAPHICSITEM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGRAPHICSITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGRAPHICSITEM_NEWFROM );
}

HB_FUNC_STATIC( QGRAPHICSITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGRAPHICSITEM_NEWFROM );
}

HB_FUNC_STATIC( QGRAPHICSITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGRAPHICSITEM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
