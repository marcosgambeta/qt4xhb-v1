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

$beginClassFrom=QGraphicsEffect

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsDropShadowEffect ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=qreal blurRadius() const

$prototypeV2=QColor color() const

$prototypeV2=QPointF offset() const

$prototypeV2=qreal xOffset() const

$prototypeV2=qreal yOffset() const

$prototypeV2=virtual QRectF boundingRectFor( const QRectF & rect ) const

$prototypeV2=void setBlurRadius( qreal blurRadius )

$prototypeV2=void setColor( const QColor & color )

$prototype=void setOffset ( const QPointF & ofs )
$internalMethod=|void|setOffset,setOffset1|const QPointF &

$prototype=void setOffset ( qreal dx, qreal dy )
$internalMethod=|void|setOffset,setOffset2|qreal,qreal

$prototype=void setOffset ( qreal d )
$internalMethod=|void|setOffset,setOffset3|qreal

/*
[1]void setOffset ( const QPointF & ofs )
[2]void setOffset ( qreal dx, qreal dy )
[3]void setOffset ( qreal d )
*/

HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsDropShadowEffect_setOffset1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsDropShadowEffect_setOffset2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGraphicsDropShadowEffect_setOffset3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setOffset

$prototypeV2=void setXOffset( qreal dx )

$prototypeV2=void setYOffset( qreal dy )

$beginSignals
$signal=|blurRadiusChanged(qreal)
$signal=|colorChanged(QColor)
$signal=|offsetChanged(QPointF)
$endSignals

#pragma ENDDUMP
