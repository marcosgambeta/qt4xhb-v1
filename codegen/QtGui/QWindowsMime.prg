%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

%% TODO: check compilation for Linux

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

%% $deleteMethod

$prototype=static int registerMimeType ( const QString & mime )
%% $staticMethod=|int|registerMimeType|const QString &

$extraMethods

#pragma ENDDUMP
