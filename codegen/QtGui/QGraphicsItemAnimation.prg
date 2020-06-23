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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QMatrix>
#include <QtCore/QPointF>
#include <QtCore/QTimeLine>

$prototype=QGraphicsItemAnimation ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=void clear()

$prototypeV2=qreal horizontalScaleAt( qreal step ) const

$prototypeV2=qreal horizontalShearAt( qreal step ) const

$prototypeV2=QGraphicsItem * item() const

$prototypeV2=QMatrix matrixAt( qreal step ) const

$prototypeV2=QPointF posAt( qreal step ) const

$prototypeV2=qreal rotationAt( qreal step ) const

$prototypeV2=void setItem( QGraphicsItem * item )

$prototypeV2=void setPosAt( qreal step, const QPointF & point )

$prototypeV2=void setRotationAt( qreal step, qreal angle )

$prototypeV2=void setScaleAt( qreal step, qreal sx, qreal sy )

$prototypeV2=void setShearAt( qreal step, qreal sh, qreal sv )

$prototypeV2=void setTimeLine( QTimeLine * timeLine )

$prototypeV2=void setTranslationAt( qreal step, qreal dx, qreal dy )

$prototypeV2=QTimeLine * timeLine() const

$prototypeV2=qreal verticalScaleAt( qreal step ) const

$prototypeV2=qreal verticalShearAt( qreal step ) const

$prototypeV2=qreal xTranslationAt( qreal step ) const

$prototypeV2=qreal yTranslationAt( qreal step ) const

$prototypeV2=void setStep( qreal step )

#pragma ENDDUMP
