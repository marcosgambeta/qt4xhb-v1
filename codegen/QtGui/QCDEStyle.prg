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

$beginClassFrom=QMotifStyle

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCDEStyle ( bool useHighlightCols = false )
$constructor=|new|bool=false

$deleteMethod

$prototypeV2=virtual void drawControl( QStyle::ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const

$prototypeV2=virtual void drawPrimitive( QStyle::PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const

$prototypeV2=virtual int pixelMetric( QStyle::PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const

$prototypeV2=virtual QPalette standardPalette() const

#pragma ENDDUMP
