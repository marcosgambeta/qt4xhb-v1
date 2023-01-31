/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMATRIX3X3
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QRECT
REQUEST QRECTF
REQUEST QTRANSFORM
REQUEST QVECTOR3D
REQUEST QVECTOR4D
#endif

CLASS QMatrix4x4

   DATA pointer
   DATA self_destruction INIT .F.

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

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMatrix4x4
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QMatrix4x4>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QtGui/QMatrix>
#include <QtGui/QTransform>

HB_FUNC_STATIC( QMATRIX4X4_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QMatrix4x4()
    */
    QMatrix4x4 * obj = new QMatrix4x4();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR( 16 ) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) && HB_ISNUM(7) && HB_ISNUM(8) && HB_ISNUM(9) && HB_ISNUM(10) && HB_ISNUM(11) && HB_ISNUM(12) && HB_ISNUM(13) && HB_ISNUM(14) && HB_ISNUM(15) && HB_ISNUM( 16 ) )
  {
    /*
    QMatrix4x4( qreal m11, qreal m12, qreal m13, qreal m14, qreal m21, qreal m22, qreal m23, qreal m24, qreal m31, qreal m32, qreal m33, qreal m34, qreal m41, qreal m42, qreal m43, qreal m44 )
    */
    QMatrix4x4 * obj = new QMatrix4x4( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), PQREAL(7), PQREAL(8), PQREAL(9), PQREAL(10), PQREAL(11), PQREAL(12), PQREAL(13), PQREAL(14), PQREAL(15), PQREAL( 16 ) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    /*
    QMatrix4x4( const QTransform & transform )
    */
    QMatrix4x4 * obj = new QMatrix4x4( *PQTRANSFORM(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMATRIX4X4_DELETE )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QVector4D column( int index ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_COLUMN )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QVector4D * ptr = new QVector4D( obj->column( PINT(1) ) );
      Qt4xHb::createReturnClass(ptr, "QVECTOR4D", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qreal determinant() const
*/
HB_FUNC_STATIC( QMATRIX4X4_DETERMINANT )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->determinant() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void fill( qreal value )
*/
HB_FUNC_STATIC( QMATRIX4X4_FILL )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->fill( PQREAL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void flipCoordinates()
*/
HB_FUNC_STATIC( QMATRIX4X4_FLIPCOORDINATES )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->flipCoordinates();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void frustum( qreal left, qreal right, qreal bottom, qreal top, qreal nearPlane, qreal farPlane )
*/
HB_FUNC_STATIC( QMATRIX4X4_FRUSTUM )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) )
    {
#endif
      obj->frustum( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QMatrix4x4 inverted( bool * invertible = 0 ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_INVERTED )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISLOG(1) || HB_ISNIL(1) ) )
    {
#endif
      bool par1;
      QMatrix4x4 * ptr = new QMatrix4x4( obj->inverted( &par1 ) );
      Qt4xHb::createReturnClass(ptr, "QMATRIX4X4", true);
      hb_storl( par1, 1 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isIdentity() const
*/
HB_FUNC_STATIC( QMATRIX4X4_ISIDENTITY )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isIdentity() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void lookAt( const QVector3D & eye, const QVector3D & center, const QVector3D & up )
*/
HB_FUNC_STATIC( QMATRIX4X4_LOOKAT )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
    {
#endif
      obj->lookAt( *PQVECTOR3D(1), *PQVECTOR3D(2), *PQVECTOR3D(3) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QMATRIX4X4_MAP )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    /*
    QPoint map( const QPoint & point ) const
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QPoint * ptr = new QPoint( obj->map( *PQPOINT(1) ) );
      Qt4xHb::createReturnClass(ptr, "QPOINT", true);
    }
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    /*
    QPointF map( const QPointF & point ) const
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QPointF * ptr = new QPointF( obj->map( *PQPOINTF(1) ) );
      Qt4xHb::createReturnClass(ptr, "QPOINTF", true);
    }
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    /*
    QVector3D map( const QVector3D & point ) const
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QVector3D * ptr = new QVector3D( obj->map( *PQVECTOR3D(1) ) );
      Qt4xHb::createReturnClass(ptr, "QVECTOR3D", true);
    }
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    /*
    QVector4D map( const QVector4D & point ) const
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QVector4D * ptr = new QVector4D( obj->map( *PQVECTOR4D(1) ) );
      Qt4xHb::createReturnClass(ptr, "QVECTOR4D", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMATRIX4X4_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    /*
    QRect mapRect( const QRect & rect ) const
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QRect * ptr = new QRect( obj->mapRect( *PQRECT(1) ) );
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    /*
    QRectF mapRect( const QRectF & rect ) const
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QRectF * ptr = new QRectF( obj->mapRect( *PQRECTF(1) ) );
      Qt4xHb::createReturnClass(ptr, "QRECTF", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QVector3D mapVector( const QVector3D & vector ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_MAPVECTOR )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->mapVector( *PQVECTOR3D(1) ) );
      Qt4xHb::createReturnClass(ptr, "QVECTOR3D", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMatrix3x3 normalMatrix() const
*/
HB_FUNC_STATIC( QMATRIX4X4_NORMALMATRIX )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMatrix3x3 * ptr = new QMatrix3x3( obj->normalMatrix() );
      Qt4xHb::createReturnClass(ptr, "QMATRIX3X3", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void optimize()
*/
HB_FUNC_STATIC( QMATRIX4X4_OPTIMIZE )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->optimize();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QMATRIX4X4_ORTHO )
{
  if( ISNUMPAR(6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) )
  {
    /*
    void ortho( qreal left, qreal right, qreal bottom, qreal top, qreal nearPlane, qreal farPlane )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->ortho( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    /*
    void ortho( const QRect & rect )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->ortho( *PQRECT(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    /*
    void ortho( const QRectF & rect )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->ortho( *PQRECTF(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void perspective( qreal angle, qreal aspect, qreal nearPlane, qreal farPlane )
*/
HB_FUNC_STATIC( QMATRIX4X4_PERSPECTIVE )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      obj->perspective( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QMATRIX4X4_ROTATE )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVECTOR3D(2) )
  {
    /*
    void rotate( qreal angle, const QVector3D & vector )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->rotate( PQREAL(1), *PQVECTOR3D(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQQUATERNION(1) )
  {
    /*
    void rotate( const QQuaternion & quaternion )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->rotate( *PQQUATERNION(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISBETWEEN(3, 4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
  {
    /*
    void rotate( qreal angle, qreal x, qreal y, qreal z = 0.0f )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->rotate( PQREAL(1), PQREAL(2), PQREAL(3), OPQREAL( 4, 0.0f ) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QVector4D row( int index ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_ROW )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QVector4D * ptr = new QVector4D( obj->row( PINT(1) ) );
      Qt4xHb::createReturnClass(ptr, "QVECTOR4D", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMATRIX4X4_SCALE )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    /*
    void scale( const QVector3D & vector )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->scale( *PQVECTOR3D(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void scale( qreal x, qreal y )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->scale( PQREAL(1), PQREAL(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
  {
    /*
    void scale( qreal x, qreal y, qreal z )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->scale( PQREAL(1), PQREAL(2), PQREAL(3) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    void scale( qreal factor )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->scale( PQREAL(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setColumn( int index, const QVector4D & value )
*/
HB_FUNC_STATIC( QMATRIX4X4_SETCOLUMN )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVECTOR4D(2) )
    {
#endif
      obj->setColumn( PINT(1), *PQVECTOR4D(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setRow( int index, const QVector4D & value )
*/
HB_FUNC_STATIC( QMATRIX4X4_SETROW )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVECTOR4D(2) )
    {
#endif
      obj->setRow( PINT(1), *PQVECTOR4D(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setToIdentity()
*/
HB_FUNC_STATIC( QMATRIX4X4_SETTOIDENTITY )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->setToIdentity();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QMATRIX4X4_TOTRANSFORM )
{
  if( ISNUMPAR(0) )
  {
    /*
    QTransform toTransform() const
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QTransform * ptr = new QTransform( obj->toTransform() );
      Qt4xHb::createReturnClass(ptr, "QTRANSFORM", true);
    }
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QTransform toTransform( qreal distanceToPlane ) const
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QTransform * ptr = new QTransform( obj->toTransform( PQREAL(1) ) );
      Qt4xHb::createReturnClass(ptr, "QTRANSFORM", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMATRIX4X4_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    /*
    void translate( const QVector3D & vector )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->translate( *PQVECTOR3D(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void translate( qreal x, qreal y )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->translate( PQREAL(1), PQREAL(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
  {
    /*
    void translate( qreal x, qreal y, qreal z )
    */
    QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->translate( PQREAL(1), PQREAL(2), PQREAL(3) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QMatrix4x4 transposed() const
*/
HB_FUNC_STATIC( QMATRIX4X4_TRANSPOSED )
{
  QMatrix4x4 * obj = static_cast<QMatrix4x4*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMatrix4x4 * ptr = new QMatrix4x4( obj->transposed() );
      Qt4xHb::createReturnClass(ptr, "QMATRIX4X4", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMATRIX4X4_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
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
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QMATRIX4X4_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
