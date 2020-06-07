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

$prototype=QBrush backgroundBrush () const
$method=|QBrush|backgroundBrush|

$prototype=Qt::BGMode backgroundMode () const
$method=|Qt::BGMode|backgroundMode|

$prototype=QBrush brush () const
$method=|QBrush|brush|

$prototypeV2=bool brushNeedsResolving() const

$prototype=QPointF brushOrigin () const
$method=|QPointF|brushOrigin|

$prototype=Qt::ClipOperation clipOperation () const
$method=|Qt::ClipOperation|clipOperation|

$prototype=QPainterPath clipPath () const
$method=|QPainterPath|clipPath|

$prototype=QRegion clipRegion () const
$method=|QRegion|clipRegion|

$prototype=QPainter::CompositionMode compositionMode () const
$method=|QPainter::CompositionMode|compositionMode|

$prototype=QFont font () const
$method=|QFont|font|

$prototypeV2=bool isClipEnabled() const

$prototype=qreal opacity () const
$method=|qreal|opacity|

$prototype=QPainter * painter () const
$method=|QPainter *|painter|

$prototype=QPen pen () const
$method=|QPen|pen|

$prototypeV2=bool penNeedsResolving() const

$prototype=QPainter::RenderHints renderHints () const
$method=|QPainter::RenderHints|renderHints|

$prototype=QPaintEngine::DirtyFlags state () const
$method=|QPaintEngine::DirtyFlags|state|

$prototype=QTransform transform () const
$method=|QTransform|transform|

$extraMethods

#pragma ENDDUMP
