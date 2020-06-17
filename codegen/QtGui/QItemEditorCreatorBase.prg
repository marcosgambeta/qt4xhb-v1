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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QWidget * createWidget ( QWidget * parent ) const = 0
$virtualMethod=|QWidget *|createWidget|QWidget *

$prototypeV2=virtual QByteArray valuePropertyName() const = 0

$extraMethods

#pragma ENDDUMP
