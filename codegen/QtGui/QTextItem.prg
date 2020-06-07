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

$prototypeV2=qreal ascent() const

$prototypeV2=qreal descent() const

$prototype=QFont font () const
$method=|QFont|font|

$prototype=RenderFlags renderFlags () const
$method=|QTextItem::RenderFlags|renderFlags|

$prototypeV2=QString text() const

$prototypeV2=qreal width() const

$extraMethods

#pragma ENDDUMP
