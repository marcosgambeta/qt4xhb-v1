%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD delete
   METHOD setTarget

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void setTarget ( const QDeclarativeProperty & property ) = 0
$virtualMethod=|void|setTarget|const QDeclarativeProperty &

$extraMethods

#pragma ENDDUMP
