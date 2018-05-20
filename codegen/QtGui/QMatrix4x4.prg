%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR4D
REQUEST QMATRIX4X4
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR3D
REQUEST QRECT
REQUEST QRECTF
REQUEST QMATRIX3X3
REQUEST QTRANSFORM
#endif

$beginClass

   METHOD new1
   METHOD new3
   METHOD new5
   METHOD new
   METHOD delete
   METHOD column
   METHOD determinant
   METHOD fill
   METHOD flipCoordinates
   METHOD frustum
   METHOD inverted
   METHOD isIdentity
   METHOD lookAt
   METHOD map
   METHOD mapRect
   METHOD mapVector
   METHOD normalMatrix
   METHOD optimize
   METHOD ortho
   METHOD perspective
   METHOD rotate
   METHOD row
   METHOD scale
   METHOD setColumn
   METHOD setRow
   METHOD setToIdentity
   METHOD toTransform
   METHOD translate
   METHOD transposed

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QMatrix>
#include <QTransform>

$prototype=QMatrix4x4 ()
$constructor=|new1|

$prototype=QMatrix4x4 ( const qreal * values )
%% TODO: implementar ?

$prototype=QMatrix4x4 ( qreal m11, qreal m12, qreal m13, qreal m14, qreal m21, qreal m22, qreal m23, qreal m24, qreal m31, qreal m32, qreal m33, qreal m34, qreal m41, qreal m42, qreal m43, qreal m44 )
$constructor=|new3|qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal

$prototype=QMatrix4x4 ( const QGenericMatrix<N, M, qreal> & matrix )
%% TODO: implementar ?

$prototype=QMatrix4x4 ( const QTransform & transform )
$constructor=|new5|const QTransform &

$prototype=QMatrix4x4 ( const QMatrix & matrix )
%% TODO: implementar ?

//[1]QMatrix4x4 ()
//[2]QMatrix4x4 ( const qreal * values )
//[3]QMatrix4x4 ( qreal m11, qreal m12, qreal m13, qreal m14, qreal m21, qreal m22, qreal m23, qreal m24, qreal m31, qreal m32, qreal m33, qreal m34, qreal m41, qreal m42, qreal m43, qreal m44 )
//[4]QMatrix4x4 ( const QGenericMatrix<N, M, qreal> & matrix )
//[5]QMatrix4x4 ( const QTransform & transform )
//[6]QMatrix4x4 ( const QMatrix & matrix )

%% TODO: implementar caso 2 (receber uma array de valores numéricos)

HB_FUNC_STATIC( QMATRIX4X4_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_NEW1 );
  }
  else if( ISNUMPAR(16) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && ISNUM(9) && ISNUM(10) && ISNUM(11) && ISNUM(12) && ISNUM(13) && ISNUM(14) && ISNUM(15) && ISNUM(16) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_NEW5 );
  }
  //else if( ISNUMPAR(1) && ISQMATRIX(1) )
  //{
  //  HB_FUNC_EXEC( QMATRIX4X4_NEW6 );
  //}
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QVector4D column ( int index ) const
$method=|QVector4D|column|int

$prototype=qreal determinant () const
$method=|qreal|determinant|

$prototype=void fill ( qreal value )
$method=|void|fill|qreal

$prototype=void flipCoordinates ()
$method=|void|flipCoordinates|

$prototype=void frustum ( qreal left, qreal right, qreal bottom, qreal top, qreal nearPlane, qreal farPlane )
$method=|void|frustum|qreal,qreal,qreal,qreal,qreal,qreal

$prototype=QMatrix4x4 inverted ( bool * invertible = 0 ) const
$method=|QMatrix4x4|inverted|bool *=0

$prototype=bool isIdentity () const
$method=|bool|isIdentity|

$prototype=void lookAt ( const QVector3D & eye, const QVector3D & center, const QVector3D & up )
$method=|void|lookAt|const QVector3D &,const QVector3D &,const QVector3D &

$prototype=QPoint map ( const QPoint & point ) const
$internalMethod=|QPoint|map,map1|const QPoint &

$prototype=QPointF map ( const QPointF & point ) const
$internalMethod=|QPointF|map,map2|const QPointF &

$prototype=QVector3D map ( const QVector3D & point ) const
$internalMethod=|QVector3D|map,map3|const QVector3D &

$prototype=QVector4D map ( const QVector4D & point ) const
$internalMethod=|QVector4D|map,map4|const QVector4D &

//[1]QPoint map ( const QPoint & point ) const
//[2]QPointF map ( const QPointF & point ) const
//[3]QVector3D map ( const QVector3D & point ) const
//[4]QVector4D map ( const QVector4D & point ) const

HB_FUNC_STATIC( QMATRIX4X4_MAP )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QMatrix4x4_map1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QMatrix4x4_map2();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QMatrix4x4_map3();
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    QMatrix4x4_map4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect mapRect ( const QRect & rect ) const
$internalMethod=|QRect|mapRect,mapRect1|const QRect &

$prototype=QRectF mapRect ( const QRectF & rect ) const
$internalMethod=|QRectF|mapRect,mapRect2|const QRectF &

//[1]QRect mapRect ( const QRect & rect ) const
//[2]QRectF mapRect ( const QRectF & rect ) const

HB_FUNC_STATIC( QMATRIX4X4_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QMatrix4x4_mapRect1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QMatrix4x4_mapRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QVector3D mapVector ( const QVector3D & vector ) const
$method=|QVector3D|mapVector|const QVector3D &

$prototype=QMatrix3x3 normalMatrix () const
$method=|QMatrix3x3|normalMatrix|

$prototype=void optimize ()
$method=|void|optimize|

$prototype=void ortho ( qreal left, qreal right, qreal bottom, qreal top, qreal nearPlane, qreal farPlane )
$internalMethod=|void|ortho,ortho1|qreal,qreal,qreal,qreal,qreal,qreal

$prototype=void ortho ( const QRect & rect )
$internalMethod=|void|ortho,ortho2|const QRect &

$prototype=void ortho ( const QRectF & rect )
$internalMethod=|void|ortho,ortho3|const QRectF &

//[1]void ortho ( qreal left, qreal right, qreal bottom, qreal top, qreal nearPlane, qreal farPlane )
//[2]void ortho ( const QRect & rect )
//[3]void ortho ( const QRectF & rect )

HB_FUNC_STATIC( QMATRIX4X4_ORTHO )
{
  if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QMatrix4x4_ortho1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QMatrix4x4_ortho2();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QMatrix4x4_ortho3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void perspective ( qreal angle, qreal aspect, qreal nearPlane, qreal farPlane )
$method=|void|perspective|qreal,qreal,qreal,qreal

$prototype=void rotate ( qreal angle, const QVector3D & vector )
$internalMethod=|void|rotate,rotate1|qreal,const QVector3D &

$prototype=void rotate ( const QQuaternion & quaternion )
$internalMethod=|void|rotate,rotate2|const QQuaternion &

$prototype=void rotate ( qreal angle, qreal x, qreal y, qreal z = 0.0f )
$internalMethod=|void|rotate,rotate3|qreal,qreal,qreal,qreal=0.0f

//[1]void rotate ( qreal angle, const QVector3D & vector )
//[2]void rotate ( const QQuaternion & quaternion )
//[3]void rotate ( qreal angle, qreal x, qreal y, qreal z = 0.0f )

HB_FUNC_STATIC( QMATRIX4X4_ROTATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVECTOR3D(2) )
  {
    QMatrix4x4_rotate1();
  }
  else if( ISNUMPAR(1) && ISQQUATERNION(1) )
  {
    QMatrix4x4_rotate2();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    QMatrix4x4_rotate3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QVector4D row ( int index ) const
$method=|QVector4D|row|int

$prototype=void scale ( const QVector3D & vector )
$internalMethod=|void|scale,scale1|const QVector3D &

$prototype=void scale ( qreal x, qreal y )
$internalMethod=|void|scale,scale2|qreal,qreal

$prototype=void scale ( qreal x, qreal y, qreal z )
$internalMethod=|void|scale,scale3|qreal,qreal,qreal

$prototype=void scale ( qreal factor )
$internalMethod=|void|scale,scale4|qreal

//[1]void scale ( const QVector3D & vector )
//[2]void scale ( qreal x, qreal y )
//[3]void scale ( qreal x, qreal y, qreal z )
//[4]void scale ( qreal factor )

HB_FUNC_STATIC( QMATRIX4X4_SCALE )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QMatrix4x4_scale1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMatrix4x4_scale2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QMatrix4x4_scale3();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMatrix4x4_scale4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setColumn ( int index, const QVector4D & value )
$method=|void|setColumn|int,const QVector4D &

$prototype=void setRow ( int index, const QVector4D & value )
$method=|void|setRow|int,const QVector4D &

$prototype=void setToIdentity ()
$method=|void|setToIdentity|

$prototype=QTransform toTransform () const
$internalMethod=|QTransform|toTransform,toTransform1|

$prototype=QTransform toTransform ( qreal distanceToPlane ) const
$internalMethod=|QTransform|toTransform,toTransform2|qreal

//[1]QTransform toTransform () const
//[2]QTransform toTransform ( qreal distanceToPlane ) const

HB_FUNC_STATIC( QMATRIX4X4_TOTRANSFORM )
{
  if( ISNUMPAR(0) )
  {
    QMatrix4x4_toTransform1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMatrix4x4_toTransform2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void translate ( const QVector3D & vector )
$internalMethod=|void|translate,translate1|const QVector3D &

$prototype=void translate ( qreal x, qreal y )
$internalMethod=|void|translate,translate2|qreal,qreal

$prototype=void translate ( qreal x, qreal y, qreal z )
$internalMethod=|void|translate,translate3|qreal,qreal,qreal

//[1]void translate ( const QVector3D & vector )
//[2]void translate ( qreal x, qreal y )
//[3]void translate ( qreal x, qreal y, qreal z )

HB_FUNC_STATIC( QMATRIX4X4_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QMatrix4x4_translate1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMatrix4x4_translate2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QMatrix4x4_translate3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QMatrix4x4 transposed () const
$method=|QMatrix4x4|transposed|

$extraMethods

#pragma ENDDUMP
