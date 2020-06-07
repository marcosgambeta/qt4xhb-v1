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

$beginClassFrom=QAbstractSlider

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDial ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=int notchSize() const

$prototypeV2=qreal notchTarget() const

$prototypeV2=bool notchesVisible() const

$prototype=void setNotchTarget ( double target )
$method=|void|setNotchTarget|double

$prototypeV2=bool wrapping() const

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void setNotchesVisible ( bool visible )
$method=|void|setNotchesVisible|bool

$prototype=void setWrapping ( bool on )
$method=|void|setWrapping|bool

#pragma ENDDUMP
