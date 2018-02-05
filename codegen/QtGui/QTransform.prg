%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTRANSFORM
REQUEST QPOINTF
REQUEST QPOINT
REQUEST QLINE
REQUEST QLINEF
REQUEST QPOLYGONF
REQUEST QPOLYGON
REQUEST QREGION
REQUEST QPAINTERPATH
REQUEST QRECTF
REQUEST QRECT
#endif

CLASS QTransform

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD m11
   METHOD m12
   METHOD m13
   METHOD m21
   METHOD m22
   METHOD m23
   METHOD m31
   METHOD m32
   METHOD m33
   METHOD adjoint
   METHOD determinant
   METHOD dx
   METHOD dy
   METHOD inverted
   METHOD isAffine
   METHOD isIdentity
   METHOD isInvertible
   METHOD isRotating
   METHOD isScaling
   METHOD isTranslating
   METHOD map1
   METHOD map10
   METHOD map
   METHOD mapRect
   METHOD mapToPolygon
   METHOD reset
   METHOD setMatrix
   METHOD transposed
   METHOD type
   METHOD fromScale
   METHOD fromTranslate
   METHOD quadToQuad
   METHOD quadToSquare
   METHOD squareToQuad

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTransform>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTransform ()
$internalConstructor=|new1|

$prototype=QTransform ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 = 1.0 )
$internalConstructor=|new2|qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal=1.0

$prototype=QTransform ( qreal m11, qreal m12, qreal m21, qreal m22, qreal dx, qreal dy )
$internalConstructor=|new3|qreal,qreal,qreal,qreal,qreal,qreal

$prototype=QTransform ( const QMatrix & matrix )
$internalConstructor=|new4|const QMatrix &

//[1]QTransform ()
//[2]QTransform ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 = 1.0 )
//[3]QTransform ( qreal m11, qreal m12, qreal m21, qreal m22, qreal dx, qreal dy )
//[4]QTransform ( const QMatrix & matrix )

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

$deleteMethod

$prototype=qreal m11 () const
$method=|qreal|m11|

$prototype=qreal m12 () const
$method=|qreal|m12|

$prototype=qreal m13 () const
$method=|qreal|m13|

$prototype=qreal m21 () const
$method=|qreal|m21|

$prototype=qreal m22 () const
$method=|qreal|m22|

$prototype=qreal m23 () const
$method=|qreal|m23|

$prototype=qreal m31 () const
$method=|qreal|m31|

$prototype=qreal m32 () const
$method=|qreal|m32|

$prototype=qreal m33 () const
$method=|qreal|m33|

$prototype=QTransform adjoint () const
$method=|QTransform|adjoint|

$prototype=qreal determinant () const
$method=|qreal|determinant|

$prototype=qreal dx () const
$method=|qreal|dx|

$prototype=qreal dy () const
$method=|qreal|dy|

$prototype=QTransform inverted ( bool * invertible = 0 ) const
$method=|QTransform|inverted|bool *=0

$prototype=bool isAffine () const
$method=|bool|isAffine|

$prototype=bool isIdentity () const
$method=|bool|isIdentity|

$prototype=bool isInvertible () const
$method=|bool|isInvertible|

$prototype=bool isRotating () const
$method=|bool|isRotating|

$prototype=bool isScaling () const
$method=|bool|isScaling|

$prototype=bool isTranslating () const
$method=|bool|isTranslating|

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

//[01]void map ( qreal x, qreal y, qreal * tx, qreal * ty ) const
//[02]QPointF map ( const QPointF & p ) const
//[03]QPoint map ( const QPoint & point ) const
//[04]QLine map ( const QLine & l ) const
//[05]QLineF map ( const QLineF & line ) const
//[06]QPolygonF map ( const QPolygonF & polygon ) const
//[07]QPolygon map ( const QPolygon & polygon ) const
//[08]QRegion map ( const QRegion & region ) const
//[09]QPainterPath map ( const QPainterPath & path ) const
//[10]void map ( int x, int y, int * tx, int * ty ) const

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

$prototype=QRectF mapRect ( const QRectF & rectangle ) const
$internalMethod=|QRectF|mapRect,mapRect1|const QRectF &

$prototype=QRect mapRect ( const QRect & rectangle ) const
$internalMethod=|QRect|mapRect,mapRect2|const QRect &

//[1]QRectF mapRect ( const QRectF & rectangle ) const
//[2]QRect mapRect ( const QRect & rectangle ) const

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

$prototype=QPolygon mapToPolygon ( const QRect & rectangle ) const
$method=|QPolygon|mapToPolygon|const QRect &

$prototype=void reset ()
$method=|void|reset|

$prototype=void setMatrix ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 )
$method=|void|setMatrix|qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal

$prototype=QTransform transposed () const
$method=|QTransform|transposed|

$prototype=TransformationType type () const
$method=|QTransform::TransformationType|type|

$prototype=static QTransform fromScale ( qreal sx, qreal sy )
$staticMethod=|QTransform|fromScale|qreal,qreal

$prototype=static QTransform fromTranslate ( qreal dx, qreal dy )
$staticMethod=|QTransform|fromTranslate|qreal,qreal

$prototype=static bool quadToQuad ( const QPolygonF & one, const QPolygonF & two, QTransform & trans )
$staticMethod=|bool|quadToQuad|const QPolygonF &,const QPolygonF &,QTransform &

$prototype=static bool quadToSquare ( const QPolygonF & quad, QTransform & trans )
$staticMethod=|bool|quadToSquare|const QPolygonF &,QTransform &

$prototype=static bool squareToQuad ( const QPolygonF & quad, QTransform & trans )
$staticMethod=|bool|squareToQuad|const QPolygonF &,QTransform &

$extraMethods

#pragma ENDDUMP
