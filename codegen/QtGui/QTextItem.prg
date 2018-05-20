%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
#endif

$beginClass

   METHOD delete
   METHOD ascent
   METHOD descent
   METHOD font
   METHOD renderFlags
   METHOD text
   METHOD width

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
