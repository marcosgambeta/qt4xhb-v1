%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractScrollArea

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>

$prototype=QGraphicsView ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QGraphicsView ( QGraphicsScene * scene, QWidget * parent = 0 )
$internalConstructor=|new2|QGraphicsScene *,QWidget *=0

/*
[1]QGraphicsView ( QWidget * parent = 0 )
[2]QGraphicsView ( QGraphicsScene * scene, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QGraphicsView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQGRAPHICSSCENE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QGraphicsView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=QBrush backgroundBrush() const

$prototypeV2=QGraphicsView::CacheMode cacheMode() const

$prototype=void centerOn ( const QPointF & pos )
$internalMethod=|void|centerOn,centerOn1|const QPointF &

$prototype=void centerOn ( qreal x, qreal y )
$internalMethod=|void|centerOn,centerOn2|qreal,qreal

$prototype=void centerOn ( const QGraphicsItem * item )
$internalMethod=|void|centerOn,centerOn3|const QGraphicsItem *

/*
[1]void centerOn ( const QPointF & pos )
[2]void centerOn ( qreal x, qreal y )
[3]void centerOn ( const QGraphicsItem * item )
*/

HB_FUNC_STATIC( QGRAPHICSVIEW_CENTERON )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsView_centerOn1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_centerOn2();
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSITEM(1) )
  {
    QGraphicsView_centerOn3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=centerOn

$prototypeV2=QGraphicsView::DragMode dragMode() const

$prototype=void ensureVisible ( const QRectF & rect, int xmargin = 50, int ymargin = 50 )
$internalMethod=|void|ensureVisible,ensureVisible1|const QRectF &,int=50,int=50

$prototype=void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
$internalMethod=|void|ensureVisible,ensureVisible2|qreal,qreal,qreal,qreal,int=50,int=50

$prototype=void ensureVisible ( const QGraphicsItem * item, int xmargin = 50, int ymargin = 50 )
$internalMethod=|void|ensureVisible,ensureVisible3|const QGraphicsItem *,int=50,int=50

/*
[1]void ensureVisible ( const QRectF & rect, int xmargin = 50, int ymargin = 50 )
[2]void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
[3]void ensureVisible ( const QGraphicsItem * item, int xmargin = 50, int ymargin = 50 )
*/

HB_FUNC_STATIC( QGRAPHICSVIEW_ENSUREVISIBLE )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QGraphicsView_ensureVisible1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    QGraphicsView_ensureVisible2();
  }
  else if( ISBETWEEN(1,3) && ISQGRAPHICSITEM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QGraphicsView_ensureVisible3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=ensureVisible

$prototype=void fitInView ( const QRectF & rect, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
$internalMethod=|void|fitInView,fitInView1|const QRectF &,Qt::AspectRatioMode=Qt::IgnoreAspectRatio

$prototype=void fitInView ( qreal x, qreal y, qreal w, qreal h, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
$internalMethod=|void|fitInView,fitInView2|qreal,qreal,qreal,qreal,Qt::AspectRatioMode=Qt::IgnoreAspectRatio

$prototype=void fitInView ( const QGraphicsItem * item, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
$internalMethod=|void|fitInView,fitInView3|const QGraphicsItem *,Qt::AspectRatioMode=Qt::IgnoreAspectRatio

/*
[1]void fitInView ( const QRectF & rect, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
[2]void fitInView ( qreal x, qreal y, qreal w, qreal h, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
[3]void fitInView ( const QGraphicsItem * item, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
*/

HB_FUNC_STATIC( QGRAPHICSVIEW_FITINVIEW )
{
  if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QGraphicsView_fitInView1();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    QGraphicsView_fitInView2();
  }
  else if( ISBETWEEN(1,2) && ISQGRAPHICSITEM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QGraphicsView_fitInView3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=fitInView

$prototypeV2=QBrush foregroundBrush() const

$prototypeV2=bool isInteractive() const

$prototypeV2=bool isTransformed() const

$prototype=QGraphicsItem * itemAt ( const QPoint & pos ) const
$internalMethod=|QGraphicsItem *|itemAt,itemAt1|const QPoint &

$prototype=QGraphicsItem * itemAt ( int x, int y ) const
$internalMethod=|QGraphicsItem *|itemAt,itemAt2|int,int

/*
[1]QGraphicsItem * itemAt ( const QPoint & pos ) const
[2]QGraphicsItem * itemAt ( int x, int y ) const
*/

HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QGraphicsView_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemAt

$prototype=QList<QGraphicsItem *> items () const
$internalMethod=|QList<QGraphicsItem *>|items,items1|

$prototype=QList<QGraphicsItem *> items ( const QPoint & pos ) const
$internalMethod=|QList<QGraphicsItem *>|items,items2|const QPoint &

$prototype=QList<QGraphicsItem *> items ( int x, int y ) const
$internalMethod=|QList<QGraphicsItem *>|items,items3|int,int

$prototype=QList<QGraphicsItem *> items ( int x, int y, int w, int h, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
$internalMethod=|QList<QGraphicsItem *>|items,items4|int,int,int,int,Qt::ItemSelectionMode=Qt::IntersectsItemShape

$prototype=QList<QGraphicsItem *> items ( const QRect & rect, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
$internalMethod=|QList<QGraphicsItem *>|items,items5|const QRect &,Qt::ItemSelectionMode=Qt::IntersectsItemShape

$prototype=QList<QGraphicsItem *> items ( const QPolygon & polygon, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
$internalMethod=|QList<QGraphicsItem *>|items,items6|const QPolygon &,Qt::ItemSelectionMode=Qt::IntersectsItemShape

$prototype=QList<QGraphicsItem *> items ( const QPainterPath & path, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
$internalMethod=|QList<QGraphicsItem *>|items,items7|const QPainterPath &,Qt::ItemSelectionMode=Qt::IntersectsItemShape

/*
[1]QList<QGraphicsItem *> items () const
[2]QList<QGraphicsItem *> items ( const QPoint & pos ) const
[3]QList<QGraphicsItem *> items ( int x, int y ) const
[4]QList<QGraphicsItem *> items ( int x, int y, int w, int h, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
[5]QList<QGraphicsItem *> items ( const QRect & rect, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
[6]QList<QGraphicsItem *> items ( const QPolygon & polygon, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
[7]QList<QGraphicsItem *> items ( const QPainterPath & path, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/

HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS )
{
  if( ISNUMPAR(0) )
  {
    QGraphicsView_items1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QGraphicsView_items2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_items3();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    QGraphicsView_items4();
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QGraphicsView_items5();
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QGraphicsView_items6();
  }
  else if( ISBETWEEN(1,2) && ISQPAINTERPATH(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QGraphicsView_items7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=items

$prototype=QPoint mapFromScene ( const QPointF & point ) const
$internalMethod=|QPoint|mapFromScene,mapFromScene1|const QPointF &

$prototype=QPolygon mapFromScene ( const QRectF & rect ) const
$internalMethod=|QPolygon|mapFromScene,mapFromScene2|const QRectF &

$prototype=QPolygon mapFromScene ( const QPolygonF & polygon ) const
$internalMethod=|QPolygon|mapFromScene,mapFromScene3|const QPolygonF &

$prototype=QPainterPath mapFromScene ( const QPainterPath & path ) const
$internalMethod=|QPainterPath|mapFromScene,mapFromScene4|const QPainterPath &

$prototype=QPoint mapFromScene ( qreal x, qreal y ) const
$internalMethod=|QPoint|mapFromScene,mapFromScene5|qreal,qreal

$prototype=QPolygon mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QPolygon|mapFromScene,mapFromScene6|qreal,qreal,qreal,qreal

/*
[1]QPoint mapFromScene ( const QPointF & point ) const
[2]QPolygon mapFromScene ( const QRectF & rect ) const
[3]QPolygon mapFromScene ( const QPolygonF & polygon ) const
[4]QPainterPath mapFromScene ( const QPainterPath & path ) const
[5]QPoint mapFromScene ( qreal x, qreal y ) const
[6]QPolygon mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/

HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsView_mapFromScene1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsView_mapFromScene2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QGraphicsView_mapFromScene3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsView_mapFromScene4();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_mapFromScene5();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsView_mapFromScene6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapFromScene

$prototype=QPointF mapToScene ( const QPoint & point ) const
$internalMethod=|QPointF|mapToScene,mapToScene1|const QPoint &

$prototype=QPolygonF mapToScene ( const QRect & rect ) const
$internalMethod=|QPolygonF|mapToScene,mapToScene2|const QRect &

$prototype=QPolygonF mapToScene ( const QPolygon & polygon ) const
$internalMethod=|QPolygonF|mapToScene,mapToScene3|const QPolygon &

$prototype=QPainterPath mapToScene ( const QPainterPath & path ) const
$internalMethod=|QPainterPath|mapToScene,mapToScene4|const QPainterPath &

$prototype=QPointF mapToScene ( int x, int y ) const
$internalMethod=|QPointF|mapToScene,mapToScene5|int,int

$prototype=QPolygonF mapToScene ( int x, int y, int w, int h ) const
$internalMethod=|QPolygonF|mapToScene,mapToScene6|int,int,int,int

/*
[1]QPointF mapToScene ( const QPoint & point ) const
[2]QPolygonF mapToScene ( const QRect & rect ) const
[3]QPolygonF mapToScene ( const QPolygon & polygon ) const
[4]QPainterPath mapToScene ( const QPainterPath & path ) const
[5]QPointF mapToScene ( int x, int y ) const
[6]QPolygonF mapToScene ( int x, int y, int w, int h ) const
*/

HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QGraphicsView_mapToScene1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QGraphicsView_mapToScene2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QGraphicsView_mapToScene3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsView_mapToScene4();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsView_mapToScene5();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsView_mapToScene6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapToScene

$prototypeV2=QMatrix matrix() const

$prototypeV2=QGraphicsView::OptimizationFlags optimizationFlags() const

$prototypeV2=void render( QPainter * painter, const QRectF & target = QRectF(), const QRect & source = QRect(), Qt::AspectRatioMode aspectRatioMode = Qt::KeepAspectRatio )

$prototypeV2=QPainter::RenderHints renderHints() const

$prototypeV2=void resetCachedContent()

$prototypeV2=void resetMatrix()

$prototypeV2=void resetTransform()

$prototypeV2=QGraphicsView::ViewportAnchor resizeAnchor() const

$prototypeV2=void rotate( qreal angle )

$prototypeV2=Qt::ItemSelectionMode rubberBandSelectionMode() const

$prototypeV2=void scale( qreal sx, qreal sy )

$prototypeV2=QGraphicsScene * scene() const

$prototypeV2=QRectF sceneRect() const

$prototypeV2=void setAlignment( Qt::Alignment alignment )

$prototypeV2=void setBackgroundBrush( const QBrush & brush )

$prototypeV2=void setCacheMode( QGraphicsView::CacheMode mode )

$prototypeV2=void setDragMode( QGraphicsView::DragMode mode )

$prototypeV2=void setForegroundBrush( const QBrush & brush )

$prototypeV2=void setInteractive( bool allowed )

$prototypeV2=void setMatrix( const QMatrix & matrix, bool combine = false )

$prototypeV2=void setOptimizationFlag( QGraphicsView::OptimizationFlag flag, bool enabled = true )

$prototypeV2=void setOptimizationFlags( QGraphicsView::OptimizationFlags flags )

$prototypeV2=void setRenderHint( QPainter::RenderHint hint, bool enabled = true )

$prototypeV2=void setRenderHints( QPainter::RenderHints hints )

$prototypeV2=void setResizeAnchor( QGraphicsView::ViewportAnchor anchor )

$prototypeV2=void setRubberBandSelectionMode( Qt::ItemSelectionMode mode )

$prototypeV2=void setScene( QGraphicsScene * scene )

$prototype=void setSceneRect ( const QRectF & rect )
$internalMethod=|void|setSceneRect,setSceneRect1|const QRectF &

$prototype=void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
$internalMethod=|void|setSceneRect,setSceneRect2|qreal,qreal,qreal,qreal

/*
[1]void setSceneRect ( const QRectF & rect )
[2]void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
*/

HB_FUNC_STATIC( QGRAPHICSVIEW_SETSCENERECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsView_setSceneRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsView_setSceneRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSceneRect

$prototypeV2=void setTransform( const QTransform & matrix, bool combine = false )

$prototypeV2=void setTransformationAnchor( QGraphicsView::ViewportAnchor anchor )

$prototypeV2=void setViewportUpdateMode( QGraphicsView::ViewportUpdateMode mode )

$prototypeV2=void shear( qreal sh, qreal sv )

$prototypeV2=QTransform transform() const

$prototypeV2=QGraphicsView::ViewportAnchor transformationAnchor() const

$prototypeV2=void translate( qreal dx, qreal dy )

$prototypeV2=QTransform viewportTransform() const

$prototypeV2=QGraphicsView::ViewportUpdateMode viewportUpdateMode() const

$prototypeV2=virtual QVariant inputMethodQuery( Qt::InputMethodQuery query ) const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void invalidateScene( const QRectF & rect = QRectF(), QGraphicsScene::SceneLayers layers = QGraphicsScene::AllLayers )

$prototypeV2=void updateScene( const QList<QRectF> & rects )

$prototypeV2=void updateSceneRect( const QRectF & rect )

#pragma ENDDUMP
