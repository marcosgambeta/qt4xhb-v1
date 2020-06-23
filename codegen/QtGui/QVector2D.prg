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

#include <QtGui/QVector3D>
#include <QtGui/QVector4D>

$prototype=QVector2D ()
$internalConstructor=|new1|

$prototype=QVector2D ( qreal xpos, qreal ypos )
$internalConstructor=|new2|qreal,qreal

$prototype=QVector2D ( const QPoint & point )
$internalConstructor=|new3|const QPoint &

$prototype=QVector2D ( const QPointF & point )
$internalConstructor=|new4|const QPointF &

$prototype=QVector2D ( const QVector3D & vector )
$internalConstructor=|new5|const QVector3D &

$prototype=QVector2D ( const QVector4D & vector )
$internalConstructor=|new6|const QVector4D &

/*
[1]QVector2D ()
[2]QVector2D ( qreal xpos, qreal ypos )
[3]QVector2D ( const QPoint & point )
[4]QVector2D ( const QPointF & point )
[5]QVector2D ( const QVector3D & vector )
[6]QVector2D ( const QVector4D & vector )
*/

HB_FUNC_STATIC( QVECTOR2D_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVector2D_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVector2D_new2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QVector2D_new3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QVector2D_new4();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QVector2D_new5();
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    QVector2D_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool isNull() const

$prototypeV2=qreal length() const

$prototypeV2=qreal lengthSquared() const

$prototypeV2=void normalize()

$prototypeV2=QVector2D normalized() const

$prototypeV2=void setX( qreal x )

$prototypeV2=void setY( qreal y )

$prototypeV2=QPoint toPoint() const

$prototypeV2=QPointF toPointF() const

$prototypeV2=QVector3D toVector3D() const

$prototypeV2=QVector4D toVector4D() const

$prototypeV2=qreal x() const

$prototypeV2=qreal y() const

$prototypeV2=static qreal dotProduct( const QVector2D & v1, const QVector2D & v2 )

%% TODO: implementar função
%% bool qFuzzyCompare ( const QVector2D & v1, const QVector2D & v2 )

$extraMethods

#pragma ENDDUMP
