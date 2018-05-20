%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

%% #ifndef QT4XHB_NO_REQUESTS
%% REQUEST QEVENTPRIVATE
%% #endif

$beginClassFrom=QEvent

%%   METHOD new
   METHOD delete
%%   METHOD data

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
