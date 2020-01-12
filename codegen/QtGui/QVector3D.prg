%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QVector2D>
#include <QtGui/QVector4D>

$prototype=QVector3D ()
$internalConstructor=|new1|

$prototype=QVector3D ( qreal xpos, qreal ypos, qreal zpos )
$internalConstructor=|new2|qreal,qreal,qreal

$prototype=QVector3D ( const QPoint & point )
$internalConstructor=|new3|const QPoint &

$prototype=QVector3D ( const QPointF & point )
$internalConstructor=|new4|const QPointF &

$prototype=QVector3D ( const QVector2D & vector )
$internalConstructor=|new5|const QVector2D &

$prototype=QVector3D ( const QVector2D & vector, qreal zpos )
$internalConstructor=|new6|const QVector2D &,qreal

$prototype=QVector3D ( const QVector4D & vector )
$internalConstructor=|new7|const QVector4D &

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
    QVector3D_new1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QVector3D_new2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QVector3D_new3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QVector3D_new4();
  }
  else if( ISNUMPAR(1) && ISQVECTOR2D(1) )
  {
    QVector3D_new5();
  }
  else if( ISNUMPAR(2) && ISQVECTOR2D(1) && ISNUM(2) )
  {
    QVector3D_new6();
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    QVector3D_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=qreal distanceToLine ( const QVector3D & point, const QVector3D & direction ) const
$method=|qreal|distanceToLine|const QVector3D &,const QVector3D &

$prototype=qreal distanceToPlane ( const QVector3D & plane, const QVector3D & normal ) const
$internalMethod=|qreal|distanceToPlane,distanceToPlane1|const QVector3D &,const QVector3D &

$prototype=qreal distanceToPlane ( const QVector3D & plane1, const QVector3D & plane2, const QVector3D & plane3 ) const
$internalMethod=|qreal|distanceToPlane,distanceToPlane2|const QVector3D &,const QVector3D &,const QVector3D &

//[1]qreal distanceToPlane ( const QVector3D & plane, const QVector3D & normal ) const
//[2]qreal distanceToPlane ( const QVector3D & plane1, const QVector3D & plane2, const QVector3D & plane3 ) const

HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPLANE )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
    QVector3D_distanceToPlane1();
  }
  else if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
  {
    QVector3D_distanceToPlane2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=distanceToPlane

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=qreal length () const
$method=|qreal|length|

$prototype=qreal lengthSquared () const
$method=|qreal|lengthSquared|

$prototype=void normalize ()
$method=|void|normalize|

$prototype=QVector3D normalized () const
$method=|QVector3D|normalized|

$prototype=void setX ( qreal x )
$method=|void|setX|qreal

$prototype=void setY ( qreal y )
$method=|void|setY|qreal

$prototype=void setZ ( qreal z )
$method=|void|setZ|qreal

$prototype=QPoint toPoint () const
$method=|QPoint|toPoint|

$prototype=QPointF toPointF () const
$method=|QPointF|toPointF|

$prototype=QVector2D toVector2D () const
$method=|QVector2D|toVector2D|

$prototype=QVector4D toVector4D () const
$method=|QVector4D|toVector4D|

$prototype=qreal x () const
$method=|qreal|x|

$prototype=qreal y () const
$method=|qreal|y|

$prototype=qreal z () const
$method=|qreal|z|

$prototype=static QVector3D crossProduct ( const QVector3D & v1, const QVector3D & v2 )
$staticMethod=|QVector3D|crossProduct|const QVector3D &,const QVector3D &

$prototype=static qreal dotProduct ( const QVector3D & v1, const QVector3D & v2 )
$staticMethod=|qreal|dotProduct|const QVector3D &,const QVector3D &

$prototype=static QVector3D normal ( const QVector3D & v1, const QVector3D & v2 )
$internalStaticMethod=|QVector3D|normal,normal1|const QVector3D &,const QVector3D &

$prototype=static QVector3D normal ( const QVector3D & v1, const QVector3D & v2, const QVector3D & v3 )
$internalStaticMethod=|QVector3D|normal,normal2|const QVector3D &,const QVector3D &,const QVector3D &

//[1]QVector3D normal ( const QVector3D & v1, const QVector3D & v2 )
//[2]QVector3D normal ( const QVector3D & v1, const QVector3D & v2, const QVector3D & v3 )

HB_FUNC_STATIC( QVECTOR3D_NORMAL )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
    QVector3D_normal1();
  }
  else if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
  {
    QVector3D_normal2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=normal

// TODO: implementar função ?
// bool qFuzzyCompare ( const QVector3D & v1, const QVector3D & v2 )

$extraMethods

#pragma ENDDUMP
