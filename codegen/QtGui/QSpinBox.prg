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

$prototype=void setMaximum ( int max )
$method=|void|setMaximum|int

$prototype=void setMinimum ( int min )
$method=|void|setMinimum|int

$prototype=void setPrefix ( const QString & prefix )
$method=|void|setPrefix|const QString &

$prototype=void setRange ( int minimum, int maximum )
$method=|void|setRange|int,int

$prototype=void setSingleStep ( int val )
$method=|void|setSingleStep|int

$prototype=void setSuffix ( const QString & suffix )
$method=|void|setSuffix|const QString &

$prototypeV2=int singleStep() const

$prototypeV2=QString suffix() const

$prototypeV2=int value() const

$prototype=void setValue ( int val )
$method=|void|setValue|int

$beginSignals
$beginGroup
$signal=|valueChanged(int)
$signal=|valueChanged(QString)
$endGroup
$endSignals

#pragma ENDDUMP
