$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR3D
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR2D
REQUEST QVECTOR4D
#endif

CLASS QVector3D

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new
   METHOD delete
   METHOD distanceToLine
   METHOD distanceToPlane1
   METHOD distanceToPlane2
   METHOD distanceToPlane
   METHOD isNull
   METHOD length
   METHOD lengthSquared
   METHOD normalize
   METHOD normalized
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD toPoint
   METHOD toPointF
   METHOD toVector2D
   METHOD toVector4D
   METHOD x
   METHOD y
   METHOD z
   METHOD crossProduct
   METHOD dotProduct
   METHOD normal1
   METHOD normal2
   METHOD normal

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QVector3D>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVector2D>
#include <QVector4D>

/*
QVector3D ()
*/
HB_FUNC_STATIC( QVECTOR3D_NEW1 )
{
  QVector3D * o = new QVector3D ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QVector3D ( qreal xpos, qreal ypos, qreal zpos )
*/
HB_FUNC_STATIC( QVECTOR3D_NEW2 )
{
  QVector3D * o = new QVector3D ( PQREAL(1), PQREAL(2), PQREAL(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QVector3D ( const QPoint & point )
*/
HB_FUNC_STATIC( QVECTOR3D_NEW3 )
{
  QVector3D * o = new QVector3D ( *PQPOINT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QVector3D ( const QPointF & point )
*/
HB_FUNC_STATIC( QVECTOR3D_NEW4 )
{
  QVector3D * o = new QVector3D ( *PQPOINTF(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QVector3D ( const QVector2D & vector )
*/
HB_FUNC_STATIC( QVECTOR3D_NEW5 )
{
  QVector3D * o = new QVector3D ( *PQVECTOR2D(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QVector3D ( const QVector2D & vector, qreal zpos )
*/
HB_FUNC_STATIC( QVECTOR3D_NEW6 )
{
  QVector3D * o = new QVector3D ( *PQVECTOR2D(1), PQREAL(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QVector3D ( const QVector4D & vector )
*/
HB_FUNC_STATIC( QVECTOR3D_NEW7 )
{
  QVector3D * o = new QVector3D ( *PQVECTOR4D(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QVector3D ()
//[2]QVector3D ( qreal xpos, qreal ypos, qreal zpos )
//[3]QVector3D ( const QPoint & point )
//[4]QVector3D ( const QPointF & point )
//[5]QVector3D ( const QVector2D & vector )
//[6]QVector3D ( const QVector2D & vector, qreal zpos )
//[7]QVector3D ( const QVector4D & vector )

HB_FUNC_STATIC( QVECTOR3D_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR2D(1) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW5 );
  }
  else if( ISNUMPAR(2) && ISQVECTOR2D(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW6 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
qreal distanceToLine ( const QVector3D & point, const QVector3D & direction ) const
*/
$method=|qreal|distanceToLine|const QVector3D &,const QVector3D &

/*
qreal distanceToPlane ( const QVector3D & plane, const QVector3D & normal ) const
*/
$method=|qreal|distanceToPlane,distanceToPlane1|const QVector3D &,const QVector3D &

/*
qreal distanceToPlane ( const QVector3D & plane1, const QVector3D & plane2, const QVector3D & plane3 ) const
*/
$method=|qreal|distanceToPlane,distanceToPlane2|const QVector3D &,const QVector3D &,const QVector3D &

//[1]qreal distanceToPlane ( const QVector3D & plane, const QVector3D & normal ) const
//[2]qreal distanceToPlane ( const QVector3D & plane1, const QVector3D & plane2, const QVector3D & plane3 ) const

HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPLANE )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
    HB_FUNC_EXEC( QVECTOR3D_DISTANCETOPLANE1 );
  }
  else if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
  {
    HB_FUNC_EXEC( QVECTOR3D_DISTANCETOPLANE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
qreal length () const
*/
$method=|qreal|length|

/*
qreal lengthSquared () const
*/
$method=|qreal|lengthSquared|

/*
void normalize ()
*/
$method=|void|normalize|

/*
QVector3D normalized () const
*/
$method=|QVector3D|normalized|

/*
void setX ( qreal x )
*/
$method=|void|setX|qreal

/*
void setY ( qreal y )
*/
$method=|void|setY|qreal

/*
void setZ ( qreal z )
*/
$method=|void|setZ|qreal

/*
QPoint toPoint () const
*/
$method=|QPoint|toPoint|

/*
QPointF toPointF () const
*/
$method=|QPointF|toPointF|

/*
QVector2D toVector2D () const
*/
$method=|QVector2D|toVector2D|

/*
QVector4D toVector4D () const
*/
$method=|QVector4D|toVector4D|

/*
qreal x () const
*/
$method=|qreal|x|

/*
qreal y () const
*/
$method=|qreal|y|

/*
qreal z () const
*/
$method=|qreal|z|

/*
static QVector3D crossProduct ( const QVector3D & v1, const QVector3D & v2 )
*/
$staticMethod=|QVector3D|crossProduct|const QVector3D &,const QVector3D &

/*
static qreal dotProduct ( const QVector3D & v1, const QVector3D & v2 )
*/
$staticMethod=|qreal|dotProduct|const QVector3D &,const QVector3D &

/*
static QVector3D normal ( const QVector3D & v1, const QVector3D & v2 )
*/
$staticMethod=|QVector3D|normal,normal1|const QVector3D &,const QVector3D &

/*
static QVector3D normal ( const QVector3D & v1, const QVector3D & v2, const QVector3D & v3 )
*/
$staticMethod=|QVector3D|normal,normal2|const QVector3D &,const QVector3D &,const QVector3D &

//[1]QVector3D normal ( const QVector3D & v1, const QVector3D & v2 )
//[2]QVector3D normal ( const QVector3D & v1, const QVector3D & v2, const QVector3D & v3 )

HB_FUNC_STATIC( QVECTOR3D_NORMAL )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NORMAL1 );
  }
  else if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NORMAL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

// TODO: implementar função
// bool qFuzzyCompare ( const QVector3D & v1, const QVector3D & v2 )

$extraMethods

#pragma ENDDUMP
