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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTransform ()
$internalConstructor=|new1|

$prototype=QTransform ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 = 1.0 )
$internalConstructor=|new2|qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal=1.0

$prototype=QTransform ( qreal m11, qreal m12, qreal m21, qreal m22, qreal dx, qreal dy )
$internalConstructor=|new3|qreal,qreal,qreal,qreal,qreal,qreal

$prototype=QTransform ( const QMatrix & matrix )
$internalConstructor=|new4|const QMatrix &

/*
[1]QTransform ()
[2]QTransform ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 = 1.0 )
[3]QTransform ( qreal m11, qreal m12, qreal m21, qreal m22, qreal dx, qreal dy )
[4]QTransform ( const QMatrix & matrix )
*/

HB_FUNC_STATIC( QTRANSFORM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTransform_new1();
  }
  else if( ISBETWEEN(8,9) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && (ISNUM(9)||ISNIL(9)) )
  {
    QTransform_new2();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QTransform_new3();
  }
  else if( ISNUMPAR(1) && ISQMATRIX(1) )
  {
    QTransform_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=qreal m11() const

$prototypeV2=qreal m12() const

$prototypeV2=qreal m13() const

$prototypeV2=qreal m21() const

$prototypeV2=qreal m22() const

$prototypeV2=qreal m23() const

$prototypeV2=qreal m31() const

$prototypeV2=qreal m32() const

$prototypeV2=qreal m33() const

$prototypeV2=QTransform adjoint() const

$prototypeV2=qreal determinant() const

$prototypeV2=qreal dx() const

$prototypeV2=qreal dy() const

$prototype=QTransform inverted ( bool * invertible = 0 ) const
$method=|QTransform|inverted|bool *=0

$prototypeV2=bool isAffine() const

$prototypeV2=bool isIdentity() const

$prototypeV2=bool isInvertible() const

$prototypeV2=bool isRotating() const

$prototypeV2=bool isScaling() const

$prototypeV2=bool isTranslating() const

$prototype=void map ( qreal x, qreal y, qreal * tx, qreal * ty ) const
$method=|void|map,map1|qreal,qreal,qreal *,qreal *

$prototype=QPointF map ( const QPointF & p ) const
$internalMethod=|QPointF|map,map2|const QPointF &

$prototype=QPoint map ( const QPoint & point ) const
$internalMethod=|QPoint|map,map3|const QPoint &

$prototype=QLine map ( const QLine & l ) const
$internalMethod=|QLine|map,map4|const QLine &

$prototype=QLineF map ( const QLineF & line ) const
$internalMethod=|QLineF|map,map5|const QLineF &

$prototype=QPolygonF map ( const QPolygonF & polygon ) const
$internalMethod=|QPolygonF|map,map6|const QPolygonF &

$prototype=QPolygon map ( const QPolygon & polygon ) const
$internalMethod=|QPolygon|map,map7|const QPolygon &

$prototype=QRegion map ( const QRegion & region ) const
$internalMethod=|QRegion|map,map8|const QRegion &

$prototype=QPainterPath map ( const QPainterPath & path ) const
$internalMethod=|QPainterPath|map,map9|const QPainterPath &

$prototype=void map ( int x, int y, int * tx, int * ty ) const
$method=|void|map,map10|int,int,int *,int *

/*
[01]void map ( qreal x, qreal y, qreal * tx, qreal * ty ) const
[02]QPointF map ( const QPointF & p ) const
[03]QPoint map ( const QPoint & point ) const
[04]QLine map ( const QLine & l ) const
[05]QLineF map ( const QLineF & line ) const
[06]QPolygonF map ( const QPolygonF & polygon ) const
[07]QPolygon map ( const QPolygon & polygon ) const
[08]QRegion map ( const QRegion & region ) const
[09]QPainterPath map ( const QPainterPath & path ) const
[10]void map ( int x, int y, int * tx, int * ty ) const
*/

%% TODO: resolver conflito entre [1] e [10] (identificar se é qreal ou int)

HB_FUNC_STATIC( QTRANSFORM_MAP )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QTransform_map2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTransform_map3();
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    QTransform_map4();
  }
  else if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    QTransform_map5();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QTransform_map6();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QTransform_map7();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QTransform_map8();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QTransform_map9();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP10 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=map

$prototype=QRectF mapRect ( const QRectF & rectangle ) const
$internalMethod=|QRectF|mapRect,mapRect1|const QRectF &

$prototype=QRect mapRect ( const QRect & rectangle ) const
$internalMethod=|QRect|mapRect,mapRect2|const QRect &

/*
[1]QRectF mapRect ( const QRectF & rectangle ) const
[2]QRect mapRect ( const QRect & rectangle ) const
*/

HB_FUNC_STATIC( QTRANSFORM_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QTransform_mapRect1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QTransform_mapRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapRect

$prototypeV2=QPolygon mapToPolygon( const QRect & rectangle ) const

$prototypeV2=void reset()

$prototypeV2=void setMatrix( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 )

$prototypeV2=QTransform transposed() const

$prototypeV2=QTransform::TransformationType type() const

$prototypeV2=static QTransform fromScale( qreal sx, qreal sy )

$prototypeV2=static QTransform fromTranslate( qreal dx, qreal dy )

$prototypeV2=static bool quadToQuad( const QPolygonF & one, const QPolygonF & two, QTransform & trans )

$prototypeV2=static bool quadToSquare( const QPolygonF & quad, QTransform & trans )

$prototypeV2=static bool squareToQuad( const QPolygonF & quad, QTransform & trans )

$extraMethods

#pragma ENDDUMP
