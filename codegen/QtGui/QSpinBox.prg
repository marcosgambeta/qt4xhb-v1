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

$beginClassFrom=QAbstractSpinBox

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSpinBox ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=QString cleanText() const

$prototypeV2=int maximum() const

$prototypeV2=int minimum() const

$prototypeV2=QString prefix() const

$prototypeV2=void setMaximum( int max )

$prototypeV2=void setMinimum( int min )

$prototypeV2=void setPrefix( const QString & prefix )

$prototypeV2=void setRange( int minimum, int maximum )

$prototypeV2=void setSingleStep( int val )

$prototypeV2=void setSuffix( const QString & suffix )

$prototypeV2=int singleStep() const

$prototypeV2=QString suffix() const

$prototypeV2=int value() const

$prototypeV2=void setValue( int val )

$beginSignals
$beginGroup
$signal=|valueChanged(int)
$signal=|valueChanged(QString)
$endGroup
$endSignals

#pragma ENDDUMP
