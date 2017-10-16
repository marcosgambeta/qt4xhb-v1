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

CLASS QMatrix4x4

   DATA pointer
   DATA self_destruction INIT .F.

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
   METHOD map1
   METHOD map2
   METHOD map3
   METHOD map4
   METHOD map
   METHOD mapRect1
   METHOD mapRect2
   METHOD mapRect
   METHOD mapVector
   METHOD normalMatrix
   METHOD optimize
   METHOD ortho1
   METHOD ortho2
   METHOD ortho3
   METHOD ortho
   METHOD perspective
   METHOD rotate1
   METHOD rotate2
   METHOD rotate3
   METHOD rotate
   METHOD row
   METHOD scale1
   METHOD scale2
   METHOD scale3
   METHOD scale4
   METHOD scale
   METHOD setColumn
   METHOD setRow
   METHOD setToIdentity
   METHOD toTransform1
   METHOD toTransform2
   METHOD toTransform
   METHOD translate1
   METHOD translate2
   METHOD translate3
   METHOD translate
   METHOD transposed

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMatrix4x4>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QMatrix>
#include <QTransform>

/*
QMatrix4x4 ()
*/
$constructor=|new1|

/*
QMatrix4x4 ( qreal m11, qreal m12, qreal m13, qreal m14, qreal m21, qreal m22, qreal m23, qreal m24, qreal m31, qreal m32, qreal m33, qreal m34, qreal m41, qreal m42, qreal m43, qreal m44 )
*/
$constructor=|new3|qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal

/*
QMatrix4x4 ( const QTransform & transform )
*/
$constructor=|new5|const QTransform &

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

/*
QVector4D column ( int index ) const
*/
$method=|QVector4D|column|int

/*
qreal determinant () const
*/
$method=|qreal|determinant|

/*
void fill ( qreal value )
*/
$method=|void|fill|qreal

/*
void flipCoordinates ()
*/
$method=|void|flipCoordinates|

/*
void frustum ( qreal left, qreal right, qreal bottom, qreal top, qreal nearPlane, qreal farPlane )
*/
$method=|void|frustum|qreal,qreal,qreal,qreal,qreal,qreal

/*
QMatrix4x4 inverted ( bool * invertible = 0 ) const
*/
$method=|QMatrix4x4|inverted|bool *=0

/*
bool isIdentity () const
*/
$method=|bool|isIdentity|

/*
void lookAt ( const QVector3D & eye, const QVector3D & center, const QVector3D & up )
*/
$method=|void|lookAt|const QVector3D &,const QVector3D &,const QVector3D &

/*
QPoint map ( const QPoint & point ) const
*/
$method=|QPoint|map,map1|const QPoint &

/*
QPointF map ( const QPointF & point ) const
*/
$method=|QPointF|map,map2|const QPointF &

/*
QVector3D map ( const QVector3D & point ) const
*/
$method=|QVector3D|map,map3|const QVector3D &

/*
QVector4D map ( const QVector4D & point ) const
*/
$method=|QVector4D|map,map4|const QVector4D &

//[1]QPoint map ( const QPoint & point ) const
//[2]QPointF map ( const QPointF & point ) const
//[3]QVector3D map ( const QVector3D & point ) const
//[4]QVector4D map ( const QVector4D & point ) const

HB_FUNC_STATIC( QMATRIX4X4_MAP )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_MAP1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_MAP2 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_MAP3 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_MAP4 );
  }
}

/*
QRect mapRect ( const QRect & rect ) const
*/
$method=|QRect|mapRect,mapRect1|const QRect &

/*
QRectF mapRect ( const QRectF & rect ) const
*/
$method=|QRectF|mapRect,mapRect2|const QRectF &

//[1]QRect mapRect ( const QRect & rect ) const
//[2]QRectF mapRect ( const QRectF & rect ) const

HB_FUNC_STATIC( QMATRIX4X4_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_MAPRECT1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_MAPRECT2 );
  }
}

/*
QVector3D mapVector ( const QVector3D & vector ) const
*/
$method=|QVector3D|mapVector|const QVector3D &

/*
QMatrix3x3 normalMatrix () const
*/
$method=|QMatrix3x3|normalMatrix|

/*
void optimize ()
*/
$method=|void|optimize|

/*
void ortho ( qreal left, qreal right, qreal bottom, qreal top, qreal nearPlane, qreal farPlane )
*/
$method=|void|ortho,ortho1|qreal,qreal,qreal,qreal,qreal,qreal

/*
void ortho ( const QRect & rect )
*/
$method=|void|ortho,ortho2|const QRect &

/*
void ortho ( const QRectF & rect )
*/
$method=|void|ortho,ortho3|const QRectF &

//[1]void ortho ( qreal left, qreal right, qreal bottom, qreal top, qreal nearPlane, qreal farPlane )
//[2]void ortho ( const QRect & rect )
//[3]void ortho ( const QRectF & rect )

HB_FUNC_STATIC( QMATRIX4X4_ORTHO )
{
  if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_ORTHO1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_ORTHO2 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_ORTHO3 );
  }
}

/*
void perspective ( qreal angle, qreal aspect, qreal nearPlane, qreal farPlane )
*/
$method=|void|perspective|qreal,qreal,qreal,qreal

/*
void rotate ( qreal angle, const QVector3D & vector )
*/
$method=|void|rotate,rotate1|qreal,const QVector3D &

/*
void rotate ( const QQuaternion & quaternion )
*/
$method=|void|rotate,rotate2|const QQuaternion &

/*
void rotate ( qreal angle, qreal x, qreal y, qreal z = 0.0f )
*/
$method=|void|rotate,rotate3|qreal,qreal,qreal,qreal=0.0f

//[1]void rotate ( qreal angle, const QVector3D & vector )
//[2]void rotate ( const QQuaternion & quaternion )
//[3]void rotate ( qreal angle, qreal x, qreal y, qreal z = 0.0f )

HB_FUNC_STATIC( QMATRIX4X4_ROTATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVECTOR3D(2) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_ROTATE1 );
  }
  else if( ISNUMPAR(1) && ISQQUATERNION(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_ROTATE2 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_ROTATE3 );
  }
}

/*
QVector4D row ( int index ) const
*/
$method=|QVector4D|row|int

/*
void scale ( const QVector3D & vector )
*/
$method=|void|scale,scale1|const QVector3D &

/*
void scale ( qreal x, qreal y )
*/
$method=|void|scale,scale2|qreal,qreal

/*
void scale ( qreal x, qreal y, qreal z )
*/
$method=|void|scale,scale3|qreal,qreal,qreal

/*
void scale ( qreal factor )
*/
$method=|void|scale,scale4|qreal

//[1]void scale ( const QVector3D & vector )
//[2]void scale ( qreal x, qreal y )
//[3]void scale ( qreal x, qreal y, qreal z )
//[4]void scale ( qreal factor )

HB_FUNC_STATIC( QMATRIX4X4_SCALE )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_SCALE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_SCALE2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_SCALE3 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_SCALE4 );
  }
}

/*
void setColumn ( int index, const QVector4D & value )
*/
$method=|void|setColumn|int,const QVector4D &

/*
void setRow ( int index, const QVector4D & value )
*/
$method=|void|setRow|int,const QVector4D &

/*
void setToIdentity ()
*/
$method=|void|setToIdentity|

/*
QTransform toTransform () const
*/
$method=|QTransform|toTransform,toTransform1|

/*
QTransform toTransform ( qreal distanceToPlane ) const
*/
$method=|QTransform|toTransform,toTransform2|qreal

//[1]QTransform toTransform () const
//[2]QTransform toTransform ( qreal distanceToPlane ) const

HB_FUNC_STATIC( QMATRIX4X4_TOTRANSFORM )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_TOTRANSFORM1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_TOTRANSFORM2 );
  }
}

/*
void translate ( const QVector3D & vector )
*/
$method=|void|translate,translate1|const QVector3D &

/*
void translate ( qreal x, qreal y )
*/
$method=|void|translate,translate2|qreal,qreal

/*
void translate ( qreal x, qreal y, qreal z )
*/
$method=|void|translate,translate3|qreal,qreal,qreal

//[1]void translate ( const QVector3D & vector )
//[2]void translate ( qreal x, qreal y )
//[3]void translate ( qreal x, qreal y, qreal z )

HB_FUNC_STATIC( QMATRIX4X4_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_TRANSLATE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_TRANSLATE2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QMATRIX4X4_TRANSLATE3 );
  }
}

/*
QMatrix4x4 transposed () const
*/
$method=|QMatrix4x4|transposed|

$extraMethods

#pragma ENDDUMP
