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

$beginClassFrom=QGraphicsSceneEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsSceneMoveEvent ()
$constructor=|new|

$deleteMethod

$prototype=QPointF newPos () const
$method=|QPointF|newPos|

$prototype=QPointF oldPos () const
$method=|QPointF|oldPos|

#pragma ENDDUMP
