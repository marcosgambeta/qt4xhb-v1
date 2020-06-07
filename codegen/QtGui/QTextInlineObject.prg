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
%% TODO: $constructor=|new|int,QTextEngine *

$deleteMethod

$prototypeV2=qreal ascent() const

$prototypeV2=qreal descent() const

$prototype=QTextFormat format () const
$method=|QTextFormat|format|

$prototypeV2=int formatIndex() const

$prototypeV2=qreal height() const

$prototypeV2=bool isValid() const

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

$prototypeV2=int textPosition() const

$prototypeV2=qreal width() const

$extraMethods

#pragma ENDDUMP
