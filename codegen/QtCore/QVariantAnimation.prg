%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAnimation

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=QVariant currentValue() const

$prototypeV2=QEasingCurve easingCurve() const

$prototypeV2=QVariant endValue() const

$prototypeV2=QVariant keyValueAt( qreal step ) const

$prototypeV2=void setDuration( int msecs )

$prototypeV2=void setEasingCurve( const QEasingCurve & easing )

$prototypeV2=void setEndValue( const QVariant & value )

$prototype=void setKeyValueAt ( qreal step, const QVariant & value )
$method=|void|setKeyValueAt|qreal,const QVariant &

$prototypeV2=void setStartValue( const QVariant & value )

$prototypeV2=QVariant startValue() const

$beginSignals
$signal=|valueChanged(QVariant)
$endSignals

#pragma ENDDUMP
