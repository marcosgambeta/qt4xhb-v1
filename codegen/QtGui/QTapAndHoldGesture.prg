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

$beginClassFrom=QGesture

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QPointF position () const
$method=|QPointF|position|

$prototype=void setPosition ( const QPointF & pos )
$method=|void|setPosition|const QPointF &

$prototype=static void setTimeout ( int msecs )
$staticMethod=|void|setTimeout|int

$prototype=static int timeout ()
$staticMethod=|int|timeout|

#pragma ENDDUMP
