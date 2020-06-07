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

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototypeV2=int pageStep() const

$prototype=void setInvertedAppearance ( bool )
$method=|void|setInvertedAppearance|bool

$prototype=void setInvertedControls ( bool )
$method=|void|setInvertedControls|bool

$prototype=void setMaximum ( int )
$method=|void|setMaximum|int

$prototype=void setMinimum ( int )
$method=|void|setMinimum|int

$prototype=void setPageStep ( int )
$method=|void|setPageStep|int

$prototype=void setRange ( int min, int max )
$method=|void|setRange|int,int

$prototype=void setSingleStep ( int )
$method=|void|setSingleStep|int

$prototype=void setSliderDown ( bool )
$method=|void|setSliderDown|bool

$prototype=void setSliderPosition ( int )
$method=|void|setSliderPosition|int

$prototype=void setTracking ( bool enable )
$method=|void|setTracking|bool

$prototypeV2=int singleStep() const

$prototypeV2=int sliderPosition() const

$prototype=void triggerAction ( SliderAction action )
$method=|void|triggerAction|QAbstractSlider::SliderAction

$prototypeV2=int value() const

$prototype=void setOrientation ( Qt::Orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=void setValue ( int )
$method=|void|setValue|int

$beginSignals
$signal=|actionTriggered(int)
$signal=|rangeChanged(int,int)
$signal=|sliderMoved(int)
$signal=|sliderPressed()
$signal=|sliderReleased()
$signal=|valueChanged(int)
$endSignals

#pragma ENDDUMP
