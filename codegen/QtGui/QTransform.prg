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
   METHOD map2
   METHOD map3
   METHOD map4
   METHOD map5
   METHOD map6
   METHOD map7
   METHOD map8
   METHOD map9
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

/*
QTransform ()
*/
$internalConstructor=|new1|

/*
QTransform ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 = 1.0 )
*/
$internalConstructor=|new2|qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal=1.0

/*
QTransform ( qreal m11, qreal m12, qreal m21, qreal m22, qreal dx, qreal dy )
*/
$internalConstructor=|new3|qreal,qreal,qreal,qreal,qreal,qreal

/*
QTransform ( const QMatrix & matrix )
*/
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

/*
qreal m11 () const
*/
$method=|qreal|m11|

/*
qreal m12 () const
*/
$method=|qreal|m12|

/*
qreal m13 () const
*/
$method=|qreal|m13|

/*
qreal m21 () const
*/
$method=|qreal|m21|

/*
qreal m22 () const
*/
$method=|qreal|m22|

/*
qreal m23 () const
*/
$method=|qreal|m23|

/*
qreal m31 () const
*/
$method=|qreal|m31|

/*
qreal m32 () const
*/
$method=|qreal|m32|

/*
qreal m33 () const
*/
$method=|qreal|m33|

/*
QTransform adjoint () const
*/
$method=|QTransform|adjoint|

/*
qreal determinant () const
*/
$method=|qreal|determinant|

/*
qreal dx () const
*/
$method=|qreal|dx|

/*
qreal dy () const
*/
$method=|qreal|dy|

/*
QTransform inverted ( bool * invertible = 0 ) const
*/
$method=|QTransform|inverted|bool *=0

/*
bool isAffine () const
*/
$method=|bool|isAffine|

/*
bool isIdentity () const
*/
$method=|bool|isIdentity|

/*
bool isInvertible () const
*/
$method=|bool|isInvertible|

/*
bool isRotating () const
*/
$method=|bool|isRotating|

/*
bool isScaling () const
*/
$method=|bool|isScaling|

/*
bool isTranslating () const
*/
$method=|bool|isTranslating|

/*
void map ( qreal x, qreal y, qreal * tx, qreal * ty ) const
*/
$method=|void|map,map1|qreal,qreal,qreal *,qreal *

/*
QPointF map ( const QPointF & p ) const
*/
$method=|QPointF|map,map2|const QPointF &

/*
QPoint map ( const QPoint & point ) const
*/
$method=|QPoint|map,map3|const QPoint &

/*
QLine map ( const QLine & l ) const
*/
$method=|QLine|map,map4|const QLine &

/*
QLineF map ( const QLineF & line ) const
*/
$method=|QLineF|map,map5|const QLineF &

/*
QPolygonF map ( const QPolygonF & polygon ) const
*/
$method=|QPolygonF|map,map6|const QPolygonF &

/*
QPolygon map ( const QPolygon & polygon ) const
*/
$method=|QPolygon|map,map7|const QPolygon &

/*
QRegion map ( const QRegion & region ) const
*/
$method=|QRegion|map,map8|const QRegion &

/*
QPainterPath map ( const QPainterPath & path ) const
*/
$method=|QPainterPath|map,map9|const QPainterPath &

/*
void map ( int x, int y, int * tx, int * ty ) const
*/
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
    HB_FUNC_EXEC( QTRANSFORM_MAP2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP3 );
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP4 );
  }
  else if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP5 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP6 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP7 );
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP8 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP9 );
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

/*
QRectF mapRect ( const QRectF & rectangle ) const
*/
$internalMethod=|QRectF|mapRect,mapRect1|const QRectF &

/*
QRect mapRect ( const QRect & rectangle ) const
*/
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

/*
QPolygon mapToPolygon ( const QRect & rectangle ) const
*/
$method=|QPolygon|mapToPolygon|const QRect &

/*
void reset ()
*/
$method=|void|reset|

/*
void setMatrix ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 )
*/
$method=|void|setMatrix|qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal

/*
QTransform transposed () const
*/
$method=|QTransform|transposed|

/*
TransformationType type () const
*/
$method=|QTransform::TransformationType|type|

/*
static QTransform fromScale ( qreal sx, qreal sy )
*/
$staticMethod=|QTransform|fromScale|qreal,qreal

/*
static QTransform fromTranslate ( qreal dx, qreal dy )
*/
$staticMethod=|QTransform|fromTranslate|qreal,qreal

/*
static bool quadToQuad ( const QPolygonF & one, const QPolygonF & two, QTransform & trans )
*/
$staticMethod=|bool|quadToQuad|const QPolygonF &,const QPolygonF &,QTransform &

/*
static bool quadToSquare ( const QPolygonF & quad, QTransform & trans )
*/
$staticMethod=|bool|quadToSquare|const QPolygonF &,QTransform &

/*
static bool squareToQuad ( const QPolygonF & quad, QTransform & trans )
*/
$staticMethod=|bool|squareToQuad|const QPolygonF &,QTransform &

$extraMethods

#pragma ENDDUMP
