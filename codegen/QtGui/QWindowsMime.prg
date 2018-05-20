%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO: check compilation for Linux

#include "hbclass.ch"

$beginClass

%%   METHOD delete
%%   METHOD registerMimeType

$endClass

$destructor

#pragma BEGINDUMP

$includes

%% $deleteMethod

$prototype=static int registerMimeType ( const QString & mime )
%% $staticMethod=|int|registerMimeType|const QString &

$extraMethods

#pragma ENDDUMP
