$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS QGraphicsRotation INHERIT QGraphicsTransform

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
$method=|QVector3D|axis|

/*
QVector3D origin () const
*/
$method=|QVector3D|origin|

/*
void setAngle ( qreal )
*/
$method=|void|setAngle|qreal

/*
void setAxis ( const QVector3D & axis )
*/
$method=|void|setAxis,setAxis1|const QVector3D &

/*
void setAxis ( Qt::Axis axis )
*/
$method=|void|setAxis,setAxis2|Qt::Axis

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
$method=|void|setOrigin|const QVector3D &

/*
virtual void applyTo ( QMatrix4x4 * matrix ) const
*/
$virtualMethod=|void|applyTo|QMatrix4x4 *

#pragma ENDDUMP
