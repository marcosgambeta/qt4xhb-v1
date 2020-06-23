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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFocusFrame ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$prototypeV2=void setWidget( QWidget * widget )

$prototypeV2=QWidget * widget() const

#pragma ENDDUMP
