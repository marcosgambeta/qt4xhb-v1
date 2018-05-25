%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

   METHOD delete
   METHOD hasTracking
   METHOD invertedAppearance
   METHOD invertedControls
   METHOD isSliderDown
   METHOD maximum
   METHOD minimum
   METHOD orientation
   METHOD pageStep
   METHOD setInvertedAppearance
   METHOD setInvertedControls
   METHOD setMaximum
   METHOD setMinimum
   METHOD setPageStep
   METHOD setRange
   METHOD setSingleStep
   METHOD setSliderDown
   METHOD setSliderPosition
   METHOD setTracking
   METHOD singleStep
   METHOD sliderPosition
   METHOD triggerAction
   METHOD value
   METHOD setOrientation
   METHOD setValue

   METHOD onActionTriggered
   METHOD onRangeChanged
   METHOD onSliderMoved
   METHOD onSliderPressed
   METHOD onSliderReleased
   METHOD onValueChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=bool hasTracking () const
$method=|bool|hasTracking|

$prototype=bool invertedAppearance () const
$method=|bool|invertedAppearance|

$prototype=bool invertedControls () const
$method=|bool|invertedControls|

$prototype=bool isSliderDown () const
$method=|bool|isSliderDown|

$prototype=int maximum () const
$method=|int|maximum|

$prototype=int minimum () const
$method=|int|minimum|

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=int pageStep () const
$method=|int|pageStep|

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

$prototype=int singleStep () const
$method=|int|singleStep|

$prototype=int sliderPosition () const
$method=|int|sliderPosition|

$prototype=void triggerAction ( SliderAction action )
$method=|void|triggerAction|QAbstractSlider::SliderAction

$prototype=int value () const
$method=|int|value|

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
