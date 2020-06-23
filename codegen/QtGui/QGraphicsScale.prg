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

$beginClassFrom=QGraphicsTransform

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsScale ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=QVector3D origin() const

$prototypeV2=void setOrigin( const QVector3D & point )

$prototypeV2=void setXScale( qreal )

$prototypeV2=void setYScale( qreal )

$prototypeV2=void setZScale( qreal )

$prototypeV2=qreal xScale() const

$prototypeV2=qreal yScale() const

$prototypeV2=qreal zScale() const

$prototypeV2=virtual void applyTo( QMatrix4x4 * matrix ) const

$beginSignals
$signal=|originChanged()
$signal=|scaleChanged()
$signal=|xScaleChanged()
$signal=|yScaleChanged()
$signal=|zScaleChanged()
$endSignals

#pragma ENDDUMP
