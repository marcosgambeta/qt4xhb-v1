$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS QGraphicsRotation INHERIT QGraphicsTransform

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD angle
   METHOD axis
   METHOD origin
   METHOD setAngle
   METHOD setAxis1
   METHOD setAxis2
   METHOD setAxis
   METHOD setOrigin
   METHOD applyTo

   METHOD onAngleChanged
   METHOD onAxisChanged
   METHOD onOriginChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsRotation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsRotation ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_NEW )
{
  QGraphicsRotation * o = new QGraphicsRotation ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
qreal angle () const
*/
$method=|qreal|angle|

/*
QVector3D axis () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_AXIS )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->axis () );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}

/*
QVector3D origin () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_ORIGIN )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->origin () );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}

/*
void setAngle ( qreal )
*/
$method=|void|setAngle|qreal

/*
void setAxis ( const QVector3D & axis )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_SETAXIS1 )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAxis ( *PQVECTOR3D(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAxis ( Qt::Axis axis )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_SETAXIS2 )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAxis ( (Qt::Axis) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setAxis ( const QVector3D & axis )
//[2]void setAxis ( Qt::Axis axis )

HB_FUNC_STATIC( QGRAPHICSROTATION_SETAXIS )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSROTATION_SETAXIS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSROTATION_SETAXIS2 );
  }
}

/*
void setOrigin ( const QVector3D & point )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_SETORIGIN )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOrigin ( *PQVECTOR3D(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void applyTo ( QMatrix4x4 * matrix ) const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_APPLYTO )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMatrix4x4 * par1 = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->applyTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
