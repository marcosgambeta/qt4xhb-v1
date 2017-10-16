$header

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

$destructor

#pragma BEGINDUMP

#include <QGraphicsItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QCursor>

$deleteMethod

/*
bool acceptDrops () const
*/
$method=|bool|acceptDrops|

/*
bool acceptHoverEvents () const
*/
$method=|bool|acceptHoverEvents|

/*
bool acceptTouchEvents () const
*/
$method=|bool|acceptTouchEvents|

/*
Qt::MouseButtons acceptedMouseButtons () const
*/
$method=|Qt::MouseButtons|acceptedMouseButtons|

/*
virtual void advance ( int phase )
*/
$virtualMethod=|void|advance|int

/*
virtual QRectF boundingRect () const = 0
*/
$virtualMethod=|QRectF|boundingRect|

/*
QRegion boundingRegion ( const QTransform & itemToDeviceTransform ) const
*/
$method=|QRegion|boundingRegion|const QTransform &

/*
qreal boundingRegionGranularity () const
*/
$method=|qreal|boundingRegionGranularity|

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
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
$method=|QRectF|childrenBoundingRect|

/*
void clearFocus ()
*/
$method=|void|clearFocus|

/*
QPainterPath clipPath () const
*/
$method=|QPainterPath|clipPath|

/*
virtual bool collidesWithItem ( const QGraphicsItem * other, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
$virtualMethod=|bool|collidesWithItem|const QGraphicsItem *,Qt::ItemSelectionMode=Qt::IntersectsItemShape

/*
virtual bool collidesWithPath ( const QPainterPath & path, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
$virtualMethod=|bool|collidesWithPath|const QPainterPath &,Qt::ItemSelectionMode=Qt::IntersectsItemShape

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
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
$method=|QGraphicsItem *|commonAncestorItem|const QGraphicsItem *

/*
virtual bool contains ( const QPointF & point ) const
*/
$virtualMethod=|bool|contains|const QPointF &

/*
QCursor cursor () const
*/
$method=|QCursor|cursor|

/*
QVariant data ( int key ) const
*/
$method=|QVariant|data|int

/*
QTransform deviceTransform ( const QTransform & viewportTransform ) const
*/
$method=|QTransform|deviceTransform|const QTransform &

/*
qreal effectiveOpacity () const
*/
$method=|qreal|effectiveOpacity|

/*
void ensureVisible ( const QRectF & rect = QRectF(), int xmargin = 50, int ymargin = 50 )
*/
$method=|void|ensureVisible,ensureVisible1|const QRectF &=QRectF(),int=50,int=50

/*
void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
*/
$method=|void|ensureVisible,ensureVisible2|qreal,qreal,qreal,qreal,int=50,int=50

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
$method=|bool|filtersChildEvents|

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
$method=|QGraphicsItem *|focusItem|

/*
QGraphicsItem * focusProxy () const
*/
$method=|QGraphicsItem *|focusProxy|

/*
void grabKeyboard ()
*/
$method=|void|grabKeyboard|

/*
void grabMouse ()
*/
$method=|void|grabMouse|

/*
QGraphicsEffect * graphicsEffect () const
*/
$method=|QGraphicsEffect *|graphicsEffect|

/*
QGraphicsItemGroup * group () const
*/
$method=|QGraphicsItemGroup *|group|

/*
bool hasCursor () const
*/
$method=|bool|hasCursor|

/*
bool hasFocus () const
*/
$method=|bool|hasFocus|

/*
void hide ()
*/
$method=|void|hide|

/*
Qt::InputMethodHints inputMethodHints () const
*/
$method=|Qt::InputMethodHints|inputMethodHints|

/*
void installSceneEventFilter ( QGraphicsItem * filterItem )
*/
$method=|void|installSceneEventFilter|QGraphicsItem *

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
bool isAncestorOf ( const QGraphicsItem * child ) const
*/
$method=|bool|isAncestorOf|const QGraphicsItem *

/*
bool isClipped () const
*/
$method=|bool|isClipped|

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
bool isObscured () const
*/
$method=|bool|isObscured,isObscured1|

/*
bool isObscured ( qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|bool|isObscured,isObscured2|qreal,qreal,qreal,qreal

/*
bool isObscured ( const QRectF & rect ) const
*/
$method=|bool|isObscured,isObscured3|const QRectF &

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
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

/*
bool isPanel () const
*/
$method=|bool|isPanel|

/*
bool isSelected () const
*/
$method=|bool|isSelected|

/*
bool isUnderMouse () const
*/
$method=|bool|isUnderMouse|

/*
bool isVisible () const
*/
$method=|bool|isVisible|

/*
bool isVisibleTo ( const QGraphicsItem * parent ) const
*/
$method=|bool|isVisibleTo|const QGraphicsItem *

/*
bool isWidget () const
*/
$method=|bool|isWidget|

/*
bool isWindow () const
*/
$method=|bool|isWindow|

/*
QTransform itemTransform ( const QGraphicsItem * other, bool * ok = 0 ) const
*/
$method=|QTransform|itemTransform|const QGraphicsItem *,bool *=0

/*
QPointF mapFromItem ( const QGraphicsItem * item, const QPointF & point ) const
*/
$method=|QPointF|mapFromItem,mapFromItem1|const QGraphicsItem *,const QPointF &

/*
QPolygonF mapFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
*/
$method=|QPolygonF|mapFromItem,mapFromItem2|const QGraphicsItem *,const QRectF &

/*
QPolygonF mapFromItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
*/
$method=|QPolygonF|mapFromItem,mapFromItem3|const QGraphicsItem *,const QPolygonF &

/*
QPainterPath mapFromItem ( const QGraphicsItem * item, const QPainterPath & path ) const
*/
$method=|QPainterPath|mapFromItem,mapFromItem4|const QGraphicsItem *,const QPainterPath &

/*
QPolygonF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|QPolygonF|mapFromItem,mapFromItem5|const QGraphicsItem *,qreal,qreal,qreal,qreal

/*
QPointF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y ) const
*/
$method=|QPointF|mapFromItem,mapFromItem6|const QGraphicsItem *,qreal,qreal

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
$method=|QPointF|mapFromParent,mapFromParent1|const QPointF &

/*
QPolygonF mapFromParent ( const QRectF & rect ) const
*/
$method=|QPolygonF|mapFromParent,mapFromParent2|const QRectF &

/*
QPolygonF mapFromParent ( const QPolygonF & polygon ) const
*/
$method=|QPolygonF|mapFromParent,mapFromParent3|const QPolygonF &

/*
QPainterPath mapFromParent ( const QPainterPath & path ) const
*/
$method=|QPainterPath|mapFromParent,mapFromParent4|const QPainterPath &

/*
QPolygonF mapFromParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|QPolygonF|mapFromParent,mapFromParent5|qreal,qreal,qreal,qreal

/*
QPointF mapFromParent ( qreal x, qreal y ) const
*/
$method=|QPointF|mapFromParent,mapFromParent6|qreal,qreal

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
$method=|QPointF|mapFromScene,mapFromScene1|const QPointF &

/*
QPolygonF mapFromScene ( const QRectF & rect ) const
*/
$method=|QPolygonF|mapFromScene,mapFromScene2|const QRectF &

/*
QPolygonF mapFromScene ( const QPolygonF & polygon ) const
*/
$method=|QPolygonF|mapFromScene,mapFromScene3|const QPolygonF &

/*
QPainterPath mapFromScene ( const QPainterPath & path ) const
*/
$method=|QPainterPath|mapFromScene,mapFromScene4|const QPainterPath &

/*
QPolygonF mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|QPolygonF|mapFromScene,mapFromScene5|qreal,qreal,qreal,qreal

/*
QPointF mapFromScene ( qreal x, qreal y ) const
*/
$method=|QPointF|mapFromScene,mapFromScene6|qreal,qreal

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
$method=|QRectF|mapRectFromItem,mapRectFromItem1|const QGraphicsItem *,const QRectF &

/*
QRectF mapRectFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|QRectF|mapRectFromItem,mapRectFromItem2|const QGraphicsItem *,qreal,qreal,qreal,qreal

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
$method=|QRectF|mapRectFromParent,mapRectFromParent1|const QRectF &

/*
QRectF mapRectFromParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|QRectF|mapRectFromParent,mapRectFromParent2|qreal,qreal,qreal,qreal

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
$method=|QRectF|mapRectFromScene,mapRectFromScene1|const QRectF &

/*
QRectF mapRectFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|QRectF|mapRectFromScene,mapRectFromScene2|qreal,qreal,qreal,qreal

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
$method=|QRectF|mapRectToItem,mapRectToItem1|const QGraphicsItem *,const QRectF &

/*
QRectF mapRectToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|QRectF|mapRectToItem,mapRectToItem2|const QGraphicsItem *,qreal,qreal,qreal,qreal

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
$method=|QRectF|mapRectToParent,mapRectToParent1|const QRectF &

/*
QRectF mapRectToParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|QRectF|mapRectToParent,mapRectToParent2|qreal,qreal,qreal,qreal

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
$method=|QRectF|mapRectToScene,mapRectToScene1|const QRectF &

/*
QRectF mapRectToScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|QRectF|mapRectToScene,mapRectToScene2|qreal,qreal,qreal,qreal

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
$method=|QPointF|mapToItem,mapToItem1|const QGraphicsItem *,const QPointF &

/*
QPolygonF mapToItem ( const QGraphicsItem * item, const QRectF & rect ) const
*/
$method=|QPolygonF|mapToItem,mapToItem2|const QGraphicsItem *,const QRectF &

/*
QPolygonF mapToItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
*/
$method=|QPolygonF|mapToItem,mapToItem3|const QGraphicsItem *,const QPolygonF &

/*
QPainterPath mapToItem ( const QGraphicsItem * item, const QPainterPath & path ) const
*/
$method=|QPainterPath|mapToItem,mapToItem4|const QGraphicsItem *,const QPainterPath &

/*
QPolygonF mapToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|QPolygonF|mapToItem,mapToItem5|const QGraphicsItem *,qreal,qreal,qreal,qreal

/*
QPointF mapToItem ( const QGraphicsItem * item, qreal x, qreal y ) const
*/
$method=|QPointF|mapToItem,mapToItem6|const QGraphicsItem *,qreal,qreal

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
$method=|QPointF|mapToParent,mapToParent1|const QPointF &

/*
QPolygonF mapToParent ( const QRectF & rect ) const
*/
$method=|QPolygonF|mapToParent,mapToParent2|const QRectF &

/*
QPolygonF mapToParent ( const QPolygonF & polygon ) const
*/
$method=|QPolygonF|mapToParent,mapToParent3|const QPolygonF &

/*
QPainterPath mapToParent ( const QPainterPath & path ) const
*/
$method=|QPainterPath|mapToParent,mapToParent4|const QPainterPath &

/*
QPolygonF mapToParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|QPolygonF|mapToParent,mapToParent5|qreal,qreal,qreal,qreal

/*
QPointF mapToParent ( qreal x, qreal y ) const
*/
$method=|QPointF|mapToParent,mapToParent6|qreal,qreal

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
$method=|QPointF|mapToScene,mapToScene1|const QPointF &

/*
QPolygonF mapToScene ( const QRectF & rect ) const
*/
$method=|QPolygonF|mapToScene,mapToScene2|const QRectF &

/*
QPolygonF mapToScene ( const QPolygonF & polygon ) const
*/
$method=|QPolygonF|mapToScene,mapToScene3|const QPolygonF &

/*
QPainterPath mapToScene ( const QPainterPath & path ) const
*/
$method=|QPainterPath|mapToScene,mapToScene4|const QPainterPath &

/*
QPolygonF mapToScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
$method=|QPolygonF|mapToScene,mapToScene5|qreal,qreal,qreal,qreal

/*
QPointF mapToScene ( qreal x, qreal y ) const
*/
$method=|QPointF|mapToScene,mapToScene6|qreal,qreal

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
$method=|void|moveBy|qreal,qreal

/*
qreal opacity () const
*/
$method=|qreal|opacity|

/*
virtual QPainterPath opaqueArea () const
*/
$virtualMethod=|QPainterPath|opaqueArea|

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 ) = 0
*/
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

/*
QGraphicsItem * panel () const
*/
$method=|QGraphicsItem *|panel|

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
$method=|QGraphicsItem *|parentItem|

/*
QGraphicsObject * parentObject () const
*/
$method=|QGraphicsObject *|parentObject|

/*
QGraphicsWidget * parentWidget () const
*/
$method=|QGraphicsWidget *|parentWidget|

/*
QPointF pos () const
*/
$method=|QPointF|pos|

/*
void removeSceneEventFilter ( QGraphicsItem * filterItem )
*/
$method=|void|removeSceneEventFilter|QGraphicsItem *

/*
void resetTransform ()
*/
$method=|void|resetTransform|

/*
qreal rotation () const
*/
$method=|qreal|rotation|

/*
qreal scale () const
*/
$method=|qreal|scale|

/*
QGraphicsScene * scene () const
*/
$method=|QGraphicsScene *|scene|

/*
QRectF sceneBoundingRect () const
*/
$method=|QRectF|sceneBoundingRect|

/*
QPointF scenePos () const
*/
$method=|QPointF|scenePos|

/*
QTransform sceneTransform () const
*/
$method=|QTransform|sceneTransform|

/*
void scroll ( qreal dx, qreal dy, const QRectF & rect = QRectF() )
*/
$method=|void|scroll|qreal,qreal,const QRectF &=QRectF()

/*
void setAcceptDrops ( bool on )
*/
$method=|void|setAcceptDrops|bool

/*
void setAcceptHoverEvents ( bool enabled )
*/
$method=|void|setAcceptHoverEvents|bool

/*
void setAcceptTouchEvents ( bool enabled )
*/
$method=|void|setAcceptTouchEvents|bool

/*
void setAcceptedMouseButtons ( Qt::MouseButtons buttons )
*/
$method=|void|setAcceptedMouseButtons|Qt::MouseButtons

/*
void setActive ( bool active )
*/
$method=|void|setActive|bool

/*
void setBoundingRegionGranularity ( qreal granularity )
*/
$method=|void|setBoundingRegionGranularity|qreal

/*
void setCacheMode ( CacheMode mode, const QSize & logicalCacheSize = QSize() )
*/
$method=|void|setCacheMode|QGraphicsItem::CacheMode,const QSize &=QSize()

/*
void setCursor ( const QCursor & cursor )
*/
$method=|void|setCursor|const QCursor &

/*
void setData ( int key, const QVariant & value )
*/
$method=|void|setData|int,const QVariant &

/*
void setEnabled ( bool enabled )
*/
$method=|void|setEnabled|bool

/*
void setFiltersChildEvents ( bool enabled )
*/
$method=|void|setFiltersChildEvents|bool

/*
void setFlag ( GraphicsItemFlag flag, bool enabled = true )
*/
$method=|void|setFlag|QGraphicsItem::GraphicsItemFlag,bool=true

/*
void setFlags ( GraphicsItemFlags flags )
*/
$method=|void|setFlags|QGraphicsItem::GraphicsItemFlags

/*
void setFocus ( Qt::FocusReason focusReason = Qt::OtherFocusReason )
*/
$method=|void|setFocus|Qt::FocusReason=Qt::OtherFocusReason

/*
void setFocusProxy ( QGraphicsItem * item )
*/
$method=|void|setFocusProxy|QGraphicsItem *

/*
void setGraphicsEffect ( QGraphicsEffect * effect )
*/
$method=|void|setGraphicsEffect|QGraphicsEffect *

/*
void setGroup ( QGraphicsItemGroup * group )
*/
$method=|void|setGroup|QGraphicsItemGroup *

/*
void setInputMethodHints ( Qt::InputMethodHints hints )
*/
$method=|void|setInputMethodHints|Qt::InputMethodHints

/*
void setOpacity ( qreal opacity )
*/
$method=|void|setOpacity|qreal

/*
void setPanelModality ( PanelModality panelModality )
*/
$method=|void|setPanelModality|QGraphicsItem::PanelModality

/*
void setParentItem ( QGraphicsItem * newParent )
*/
$method=|void|setParentItem|QGraphicsItem *

/*
void setPos ( const QPointF & pos )
*/
$method=|void|setPos,setPos1|const QPointF &

/*
void setPos ( qreal x, qreal y )
*/
$method=|void|setPos,setPos2|qreal,qreal

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
$method=|void|setRotation|qreal

/*
void setScale ( qreal factor )
*/
$method=|void|setScale|qreal

/*
void setSelected ( bool selected )
*/
$method=|void|setSelected|bool

/*
void setToolTip ( const QString & toolTip )
*/
$method=|void|setToolTip|const QString &

/*
void setTransform ( const QTransform & matrix, bool combine = false )
*/
$method=|void|setTransform|const QTransform &,bool=false

/*
void setTransformOriginPoint ( const QPointF & origin )
*/
$method=|void|setTransformOriginPoint,setTransformOriginPoint1|const QPointF &

/*
void setTransformOriginPoint ( qreal x, qreal y )
*/
$method=|void|setTransformOriginPoint,setTransformOriginPoint2|qreal,qreal

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
      par1 << (QGraphicsTransform *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setTransformations ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
void setX ( qreal x )
*/
$method=|void|setX|qreal

/*
void setY ( qreal y )
*/
$method=|void|setY|qreal

/*
void setZValue ( qreal z )
*/
$method=|void|setZValue|qreal

/*
virtual QPainterPath shape () const
*/
$virtualMethod=|QPainterPath|shape|

/*
void show ()
*/
$method=|void|show|

/*
void stackBefore ( const QGraphicsItem * sibling )
*/
$method=|void|stackBefore|const QGraphicsItem *

/*
QGraphicsObject * toGraphicsObject ()
*/
$method=|QGraphicsObject *|toGraphicsObject,toGraphicsObject1|

/*
const QGraphicsObject * toGraphicsObject () const
*/
$method=|const QGraphicsObject *|toGraphicsObject,toGraphicsObject2|

//[1]QGraphicsObject * toGraphicsObject ()
//[2]const QGraphicsObject * toGraphicsObject () const

HB_FUNC_STATIC( QGRAPHICSITEM_TOGRAPHICSOBJECT )
{
  HB_FUNC_EXEC( QGRAPHICSITEM_TOGRAPHICSOBJECT1 );
}

/*
QString toolTip () const
*/
$method=|QString|toolTip|

/*
QGraphicsItem * topLevelItem () const
*/
$method=|QGraphicsItem *|topLevelItem|

/*
QGraphicsWidget * topLevelWidget () const
*/
$method=|QGraphicsWidget *|topLevelWidget|

/*
QTransform transform () const
*/
$method=|QTransform|transform|

/*
QPointF transformOriginPoint () const
*/
$method=|QPointF|transformOriginPoint|

/*
QList<QGraphicsTransform *> transformations () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TRANSFORMATIONS )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QGraphicsTransform *> list = obj->transformations ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSTRANSFORM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSTRANSFORM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
$virtualMethod=|int|type|

/*
void ungrabKeyboard ()
*/
$method=|void|ungrabKeyboard|

/*
void ungrabMouse ()
*/
$method=|void|ungrabMouse|

/*
void unsetCursor ()
*/
$method=|void|unsetCursor|

/*
void update ( const QRectF & rect = QRectF() )
*/
$method=|void|update,update1|const QRectF &=QRectF()

/*
void update ( qreal x, qreal y, qreal width, qreal height )
*/
$method=|void|update,update2|qreal,qreal,qreal,qreal

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
$method=|QGraphicsWidget *|window|

/*
qreal x () const
*/
$method=|qreal|x|

/*
qreal y () const
*/
$method=|qreal|y|

/*
qreal zValue () const
*/
$method=|qreal|zValue|

$extraMethods

#pragma ENDDUMP
