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

$prototype=QTextInlineObject ( int i, QTextEngine * e )
$constructor=|new|int,QTextEngine *

$deleteMethod

$prototype=qreal ascent () const
$method=|qreal|ascent|

$prototype=qreal descent () const
$method=|qreal|descent|

$prototype=QTextFormat format () const
$method=|QTextFormat|format|

$prototype=int formatIndex () const
$method=|int|formatIndex|

$prototype=qreal height () const
$method=|qreal|height|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QRectF rect () const
$method=|QRectF|rect|

$prototype=void setAscent ( qreal a )
$method=|void|setAscent|qreal

$prototype=void setDescent ( qreal d )
$method=|void|setDescent|qreal

$prototype=void setWidth ( qreal w )
$method=|void|setWidth|qreal

$prototype=Qt::LayoutDirection textDirection () const
$method=|Qt::LayoutDirection|textDirection|

$prototype=int textPosition () const
$method=|int|textPosition|

$prototype=qreal width () const
$method=|qreal|width|

$extraMethods

#pragma ENDDUMP
