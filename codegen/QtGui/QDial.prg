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

$prototypeV2=void setNotchTarget( double target )

$prototypeV2=bool wrapping() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void setNotchesVisible( bool visible )

$prototypeV2=void setWrapping( bool on )

#pragma ENDDUMP
