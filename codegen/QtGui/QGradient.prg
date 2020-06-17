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

$prototypeV2=QGradient::CoordinateMode coordinateMode() const

$prototype=void setColorAt ( qreal position, const QColor & color )
$method=|void|setColorAt|qreal,const QColor &

$prototype=void setCoordinateMode ( CoordinateMode mode )
$method=|void|setCoordinateMode|QGradient::CoordinateMode

$prototype=void setSpread ( Spread method )
$method=|void|setSpread|QGradient::Spread

$prototypeV2=QGradient::Spread spread() const

$prototypeV2=QGradient::Type type() const

$extraMethods

#pragma ENDDUMP
