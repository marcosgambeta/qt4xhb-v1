$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS QGraphicsScale INHERIT QGraphicsTransform

   METHOD new
   METHOD delete
   METHOD origin
   METHOD setOrigin
   METHOD setXScale
   METHOD setYScale
   METHOD setZScale
   METHOD xScale
   METHOD yScale
   METHOD zScale
   METHOD applyTo

   METHOD onOriginChanged
   METHOD onScaleChanged
   METHOD onXScaleChanged
   METHOD onYScaleChanged
   METHOD onZScaleChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsScale>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsScale ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_NEW )
{
  QGraphicsScale * o = new QGraphicsScale ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QVector3D origin () const
*/
$method=|QVector3D|origin|

/*
void setOrigin ( const QVector3D & point )
*/
$method=|void|setOrigin|const QVector3D &

/*
void setXScale ( qreal )
*/
$method=|void|setXScale|qreal

/*
void setYScale ( qreal )
*/
$method=|void|setYScale|qreal

/*
void setZScale ( qreal )
*/
$method=|void|setZScale|qreal

/*
qreal xScale () const
*/
$method=|qreal|xScale|

/*
qreal yScale () const
*/
$method=|qreal|yScale|

/*
qreal zScale () const
*/
$method=|qreal|zScale|

/*
virtual void applyTo ( QMatrix4x4 * matrix ) const
*/
$virtualMethod=|void|applyTo|QMatrix4x4 *

#pragma ENDDUMP
