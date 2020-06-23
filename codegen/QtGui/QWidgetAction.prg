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

$beginClassFrom=QAction

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWidgetAction ( QObject * parent )
$constructor=|new|QObject *

$deleteMethod

$prototypeV2=QWidget * defaultWidget() const

$prototypeV2=void releaseWidget( QWidget * widget )

$prototypeV2=QWidget * requestWidget( QWidget * parent )

$prototypeV2=void setDefaultWidget( QWidget * widget )

#pragma ENDDUMP
