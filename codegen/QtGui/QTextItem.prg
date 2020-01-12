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

$prototype=qreal ascent () const
$method=|qreal|ascent|

$prototype=qreal descent () const
$method=|qreal|descent|

$prototype=QFont font () const
$method=|QFont|font|

$prototype=RenderFlags renderFlags () const
$method=|QTextItem::RenderFlags|renderFlags|

$prototype=QString text () const
$method=|QString|text|

$prototype=qreal width () const
$method=|qreal|width|

$extraMethods

#pragma ENDDUMP
