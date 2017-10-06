$header

#include "hbclass.ch"

CLASS QAbstractSlider INHERIT QWidget

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractSlider>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
bool hasTracking () const
*/
$method=|bool|hasTracking|

/*
bool invertedAppearance () const
*/
$method=|bool|invertedAppearance|

/*
bool invertedControls () const
*/
$method=|bool|invertedControls|

/*
bool isSliderDown () const
*/
$method=|bool|isSliderDown|

/*
int maximum () const
*/
$method=|int|maximum|

/*
int minimum () const
*/
$method=|int|minimum|

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
int pageStep () const
*/
$method=|int|pageStep|

/*
void setInvertedAppearance ( bool )
*/
$method=|void|setInvertedAppearance|bool

/*
void setInvertedControls ( bool )
*/
$method=|void|setInvertedControls|bool

/*
void setMaximum ( int )
*/
$method=|void|setMaximum|int

/*
void setMinimum ( int )
*/
$method=|void|setMinimum|int

/*
void setPageStep ( int )
*/
$method=|void|setPageStep|int

/*
void setRange ( int min, int max )
*/
$method=|void|setRange|int,int

/*
void setSingleStep ( int )
*/
$method=|void|setSingleStep|int

/*
void setSliderDown ( bool )
*/
$method=|void|setSliderDown|bool

/*
void setSliderPosition ( int )
*/
$method=|void|setSliderPosition|int

/*
void setTracking ( bool enable )
*/
$method=|void|setTracking|bool

/*
int singleStep () const
*/
$method=|int|singleStep|

/*
int sliderPosition () const
*/
$method=|int|sliderPosition|

/*
void triggerAction ( SliderAction action )
*/
$method=|void|triggerAction|QAbstractSlider::SliderAction

/*
int value () const
*/
$method=|int|value|

/*
void setOrientation ( Qt::Orientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
void setValue ( int )
*/
$method=|void|setValue|int

#pragma ENDDUMP
