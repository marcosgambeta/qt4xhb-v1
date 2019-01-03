%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=virtual QByteArray valuePropertyName () const = 0
$virtualMethod=|QByteArray|valuePropertyName|

$extraMethods

#pragma ENDDUMP
