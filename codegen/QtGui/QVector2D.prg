$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR2D
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR3D
REQUEST QVECTOR4D
#endif

CLASS QVector2D

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD length
   METHOD lengthSquared
   METHOD normalize
   METHOD normalized
   METHOD setX
   METHOD setY
   METHOD toPoint
   METHOD toPointF
   METHOD toVector3D
   METHOD toVector4D
   METHOD x
   METHOD y
   METHOD dotProduct

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QVector2D>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVector3D>
#include <QVector4D>

/*
QVector2D ()
*/
$constructor=|new1|

/*
QVector2D ( qreal xpos, qreal ypos )
*/
$constructor=|new2|qreal,qreal

/*
QVector2D ( const QPoint & point )
*/
$constructor=|new3|const QPoint &

/*
QVector2D ( const QPointF & point )
*/
$constructor=|new4|const QPointF &

/*
QVector2D ( const QVector3D & vector )
*/
$constructor=|new5|const QVector3D &

/*
QVector2D ( const QVector4D & vector )
*/
$constructor=|new6|const QVector4D &

//[1]QVector2D ()
//[2]QVector2D ( qreal xpos, qreal ypos )
//[3]QVector2D ( const QPoint & point )
//[4]QVector2D ( const QPointF & point )
//[5]QVector2D ( const QVector3D & vector )
//[6]QVector2D ( const QVector4D & vector )

HB_FUNC_STATIC( QVECTOR2D_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVECTOR2D_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QVECTOR2D_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QVECTOR2D_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QVECTOR2D_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    HB_FUNC_EXEC( QVECTOR2D_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    HB_FUNC_EXEC( QVECTOR2D_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

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
QVector2D normalized () const
*/
$method=|QVector2D|normalized|

/*
void setX ( qreal x )
*/
$method=|void|setX|qreal

/*
void setY ( qreal y )
*/
$method=|void|setY|qreal

/*
QPoint toPoint () const
*/
$method=|QPoint|toPoint|

/*
QPointF toPointF () const
*/
$method=|QPointF|toPointF|

/*
QVector3D toVector3D () const
*/
$method=|QVector3D|toVector3D|

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
static qreal dotProduct ( const QVector2D & v1, const QVector2D & v2 )
*/
$staticMethod=|qreal|dotProduct|const QVector2D &,const QVector2D &

%% TODO: implementar função
%% bool qFuzzyCompare ( const QVector2D & v1, const QVector2D & v2 )

$extraMethods

#pragma ENDDUMP
