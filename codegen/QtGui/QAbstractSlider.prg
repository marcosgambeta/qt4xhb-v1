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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=bool hasTracking() const

$prototypeV2=bool invertedAppearance() const

$prototypeV2=bool invertedControls() const

$prototypeV2=bool isSliderDown() const

$prototypeV2=int maximum() const

$prototypeV2=int minimum() const

$prototypeV2=Qt::Orientation orientation() const

$prototypeV2=int pageStep() const

$prototypeV2=void setInvertedAppearance( bool )

$prototypeV2=void setInvertedControls( bool )

$prototypeV2=void setMaximum( int )

$prototypeV2=void setMinimum( int )

$prototypeV2=void setPageStep( int )

$prototypeV2=void setRange( int min, int max )

$prototypeV2=void setSingleStep( int )

$prototypeV2=void setSliderDown( bool )

$prototypeV2=void setSliderPosition( int )

$prototypeV2=void setTracking( bool enable )

$prototypeV2=int singleStep() const

$prototypeV2=int sliderPosition() const

$prototypeV2=void triggerAction( QAbstractSlider::SliderAction action )

$prototypeV2=int value() const

$prototypeV2=void setOrientation( Qt::Orientation )

$prototypeV2=void setValue( int )

$beginSignals
$signal=|actionTriggered(int)
$signal=|rangeChanged(int,int)
$signal=|sliderMoved(int)
$signal=|sliderPressed()
$signal=|sliderReleased()
$signal=|valueChanged(int)
$endSignals

#pragma ENDDUMP
