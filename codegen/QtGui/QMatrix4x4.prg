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
HB_FUNC_STATIC( QMATRIX4X4_NEW1 )
{
  QMatrix4x4 * o = new QMatrix4x4 ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QMatrix4x4 ( qreal m11, qreal m12, qreal m13, qreal m14, qreal m21, qreal m22, qreal m23, qreal m24, qreal m31, qreal m32, qreal m33, qreal m34, qreal m41, qreal m42, qreal m43, qreal m44 )
*/
HB_FUNC_STATIC( QMATRIX4X4_NEW3 )
{
  QMatrix4x4 * o = new QMatrix4x4 ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), PQREAL(7), PQREAL(8), PQREAL(9), PQREAL(10), PQREAL(11), PQREAL(12), PQREAL(13), PQREAL(14), PQREAL(15), PQREAL(16) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QMatrix4x4 ( const QTransform & transform )
*/
HB_FUNC_STATIC( QMATRIX4X4_NEW5 )
{
  QMatrix4x4 * o = new QMatrix4x4 ( *PQTRANSFORM(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QMatrix4x4 ()
//[2]QMatrix4x4 ( const qreal * values )
//[3]QMatrix4x4 ( qreal m11, qreal m12, qreal m13, qreal m14, qreal m21, qreal m22, qreal m23, qreal m24, qreal m31, qreal m32, qreal m33, qreal m34, qreal m41, qreal m42, qreal m43, qreal m44 )
//[4]QMatrix4x4 ( const QGenericMatrix<N, M, qreal> & matrix )
//[5]QMatrix4x4 ( const QTransform & transform )
//[6]QMatrix4x4 ( const QMatrix & matrix )

// TODO: implementar caso 2 (receber uma array de valores numéricos)

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

HB_FUNC_STATIC( QMATRIX4X4_DELETE )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QVector4D column ( int index ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_COLUMN )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->column ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR4D" );
  }
}

/*
qreal determinant () const
*/
HB_FUNC_STATIC( QMATRIX4X4_DETERMINANT )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->determinant () );
  }
}

/*
void fill ( qreal value )
*/
HB_FUNC_STATIC( QMATRIX4X4_FILL )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->fill ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void flipCoordinates ()
*/
HB_FUNC_STATIC( QMATRIX4X4_FLIPCOORDINATES )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->flipCoordinates ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void frustum ( qreal left, qreal right, qreal bottom, qreal top, qreal nearPlane, qreal farPlane )
*/
HB_FUNC_STATIC( QMATRIX4X4_FRUSTUM )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->frustum ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMatrix4x4 inverted ( bool * invertible = 0 ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_INVERTED )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1;
    QMatrix4x4 * ptr = new QMatrix4x4( obj->inverted ( &par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMATRIX4X4", true );
    hb_storl( par1, 1 );
  }
}

/*
bool isIdentity () const
*/
HB_FUNC_STATIC( QMATRIX4X4_ISIDENTITY )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isIdentity () );
  }
}

/*
void lookAt ( const QVector3D & eye, const QVector3D & center, const QVector3D & up )
*/
HB_FUNC_STATIC( QMATRIX4X4_LOOKAT )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->lookAt ( *PQVECTOR3D(1), *PQVECTOR3D(2), *PQVECTOR3D(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint map ( const QPoint & point ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_MAP1 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->map ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPointF map ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_MAP2 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->map ( *PQPOINTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QVector3D map ( const QVector3D & point ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_MAP3 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->map ( *PQVECTOR3D(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}

/*
QVector4D map ( const QVector4D & point ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_MAP4 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->map ( *PQVECTOR4D(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR4D" );
  }
}

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
HB_FUNC_STATIC( QMATRIX4X4_MAPRECT1 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->mapRect ( *PQRECT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRectF mapRect ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_MAPRECT2 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRect ( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

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
HB_FUNC_STATIC( QMATRIX4X4_MAPVECTOR )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->mapVector ( *PQVECTOR3D(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}

/*
QMatrix3x3 normalMatrix () const
*/
HB_FUNC_STATIC( QMATRIX4X4_NORMALMATRIX )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMatrix3x3 * ptr = new QMatrix3x3( obj->normalMatrix () );
    _qt4xhb_createReturnClass ( ptr, "QMATRIX3X3" );
  }
}

/*
void optimize ()
*/
HB_FUNC_STATIC( QMATRIX4X4_OPTIMIZE )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->optimize ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ortho ( qreal left, qreal right, qreal bottom, qreal top, qreal nearPlane, qreal farPlane )
*/
HB_FUNC_STATIC( QMATRIX4X4_ORTHO1 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ortho ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ortho ( const QRect & rect )
*/
HB_FUNC_STATIC( QMATRIX4X4_ORTHO2 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ortho ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ortho ( const QRectF & rect )
*/
HB_FUNC_STATIC( QMATRIX4X4_ORTHO3 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ortho ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QMATRIX4X4_PERSPECTIVE )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->perspective ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void rotate ( qreal angle, const QVector3D & vector )
*/
HB_FUNC_STATIC( QMATRIX4X4_ROTATE1 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->rotate ( PQREAL(1), *PQVECTOR3D(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void rotate ( const QQuaternion & quaternion )
*/
HB_FUNC_STATIC( QMATRIX4X4_ROTATE2 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->rotate ( *PQQUATERNION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void rotate ( qreal angle, qreal x, qreal y, qreal z = 0.0f )
*/
HB_FUNC_STATIC( QMATRIX4X4_ROTATE3 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->rotate ( PQREAL(1), PQREAL(2), PQREAL(3), (qreal) ISNIL(4)? 0.0f : hb_parnd(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QMATRIX4X4_ROW )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->row ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR4D" );
  }
}

/*
void scale ( const QVector3D & vector )
*/
HB_FUNC_STATIC( QMATRIX4X4_SCALE1 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scale ( *PQVECTOR3D(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scale ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QMATRIX4X4_SCALE2 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scale ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scale ( qreal x, qreal y, qreal z )
*/
HB_FUNC_STATIC( QMATRIX4X4_SCALE3 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scale ( PQREAL(1), PQREAL(2), PQREAL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scale ( qreal factor )
*/
HB_FUNC_STATIC( QMATRIX4X4_SCALE4 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scale ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QMATRIX4X4_SETCOLUMN )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumn ( PINT(1), *PQVECTOR4D(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRow ( int index, const QVector4D & value )
*/
HB_FUNC_STATIC( QMATRIX4X4_SETROW )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRow ( PINT(1), *PQVECTOR4D(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToIdentity ()
*/
HB_FUNC_STATIC( QMATRIX4X4_SETTOIDENTITY )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setToIdentity ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTransform toTransform () const
*/
HB_FUNC_STATIC( QMATRIX4X4_TOTRANSFORM1 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->toTransform () );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

/*
QTransform toTransform ( qreal distanceToPlane ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_TOTRANSFORM2 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->toTransform ( PQREAL(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

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
HB_FUNC_STATIC( QMATRIX4X4_TRANSLATE1 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( *PQVECTOR3D(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QMATRIX4X4_TRANSLATE2 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( qreal x, qreal y, qreal z )
*/
HB_FUNC_STATIC( QMATRIX4X4_TRANSLATE3 )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( PQREAL(1), PQREAL(2), PQREAL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QMATRIX4X4_TRANSPOSED )
{
  QMatrix4x4 * obj = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMatrix4x4 * ptr = new QMatrix4x4( obj->transposed () );
    _qt4xhb_createReturnClass ( ptr, "QMATRIX4X4", true );
  }
}

$extraMethods

#pragma ENDDUMP
