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

$beginClassFrom=QGraphicsWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsBlurEffect ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=QGraphicsBlurEffect::BlurHints blurHints() const

$prototypeV2=qreal blurRadius() const

$prototypeV2=virtual QRectF boundingRectFor( const QRectF & rect ) const

$prototypeV2=void setBlurHints( QGraphicsBlurEffect::BlurHints hints )

$prototypeV2=void setBlurRadius( qreal blurRadius )

$beginSignals
$signal=|blurHintsChanged(QGraphicsBlurEffect::BlurHints)
$signal=|blurRadiusChanged(qreal)
$endSignals

#pragma ENDDUMP
