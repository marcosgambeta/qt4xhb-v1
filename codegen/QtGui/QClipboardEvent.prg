%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QClipboardEvent(QEventPrivate *data)
%% TODO: QEventPrivate ?
%% $constructor=|new|QEventPrivate *

$deleteMethod

$prototype=QEventPrivate *data()
%% TODO: QEventPrivate ?
%% $method=|QEventPrivate *|data|

#pragma ENDDUMP
