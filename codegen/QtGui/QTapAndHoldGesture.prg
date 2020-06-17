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

$beginClassFrom=QGesture

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=QPointF position() const

$prototype=void setPosition ( const QPointF & pos )
$method=|void|setPosition|const QPointF &

$prototype=static void setTimeout ( int msecs )
$staticMethod=|void|setTimeout|int

$prototypeV2=static int timeout()

#pragma ENDDUMP
