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

$prototypeV2=QTextFormat format() const

$prototypeV2=int formatIndex() const

$prototypeV2=qreal height() const

$prototypeV2=bool isValid() const

$prototypeV2=QRectF rect() const

$prototypeV2=void setAscent( qreal a )

$prototypeV2=void setDescent( qreal d )

$prototypeV2=void setWidth( qreal w )

$prototypeV2=Qt::LayoutDirection textDirection() const

$prototypeV2=int textPosition() const

$prototypeV2=qreal width() const

$extraMethods

#pragma ENDDUMP
