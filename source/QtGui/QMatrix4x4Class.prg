/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QMatrix4x4
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
  QMatrix4x4 * o = NULL;
  o = new QMatrix4x4 ();
  _qt4xhb_storePointerAndFlag ( o, true );
}



/*
QMatrix4x4 ( qreal m11, qreal m12, qreal m13, qreal m14, qreal m21, qreal m22, qreal m23, qreal m24, qreal m31, qreal m32, qreal m33, qreal m34, qreal m41, qreal m42, qreal m43, qreal m44 )
*/
HB_FUNC_STATIC( QMATRIX4X4_NEW3 )
{
  QMatrix4x4 * o = NULL;
  o = new QMatrix4x4 ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), PQREAL(7), PQREAL(8), PQREAL(9), PQREAL(10), PQREAL(11), PQREAL(12), PQREAL(13), PQREAL(14), PQREAL(15), PQREAL(16) );
  _qt4xhb_storePointerAndFlag ( o, true );
}



/*
QMatrix4x4 ( const QTransform & transform )
*/
HB_FUNC_STATIC( QMATRIX4X4_NEW5 )
{
  QMatrix4x4 * o = NULL;
  QTransform * par1 = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QMatrix4x4 ( *par1 );
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
    int par1 = hb_parni(1);
    QVector4D * ptr = new QVector4D( obj->column ( par1 ) );
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
    qreal r = obj->determinant ();
    hb_retnd( r );
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
    hb_retl( obj->isIdentity () );
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
    QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector3D * par3 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->lookAt ( *par1, *par2, *par3 );
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
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPoint * ptr = new QPoint( obj->map ( *par1 ) );
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
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPointF * ptr = new QPointF( obj->map ( *par1 ) );
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
    QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector3D * ptr = new QVector3D( obj->map ( *par1 ) );
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
    QVector4D * par1 = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector4D * ptr = new QVector4D( obj->map ( *par1 ) );
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
    QRect * par1 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->mapRect ( *par1 ) );
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
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * ptr = new QRectF( obj->mapRect ( *par1 ) );
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
    QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector3D * ptr = new QVector3D( obj->mapVector ( *par1 ) );
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
    QRect * par1 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->ortho ( *par1 );
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
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->ortho ( *par1 );
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
    QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->rotate ( PQREAL(1), *par2 );
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
    QQuaternion * par1 = (QQuaternion *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->rotate ( *par1 );
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
    int par1 = hb_parni(1);
    QVector4D * ptr = new QVector4D( obj->row ( par1 ) );
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
    QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->scale ( *par1 );
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
    int par1 = hb_parni(1);
    QVector4D * par2 = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setColumn ( par1, *par2 );
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
    int par1 = hb_parni(1);
    QVector4D * par2 = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setRow ( par1, *par2 );
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
    QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->translate ( *par1 );
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


HB_FUNC_STATIC( QMATRIX4X4_NEWFROM )
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

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QMATRIX4X4_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMATRIX4X4_NEWFROM );
}

HB_FUNC_STATIC( QMATRIX4X4_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMATRIX4X4_NEWFROM );
}

HB_FUNC_STATIC( QMATRIX4X4_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMATRIX4X4_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
