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

$beginClassFrom=QCommonStyle

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMotifStyle ( bool useHighlightCols = false )
$constructor=|new|bool=false

$deleteMethod

$prototypeV2=void setUseHighlightColors( bool arg )

$prototypeV2=bool useHighlightColors() const

$prototypeV2=virtual void drawComplexControl( QStyle::ComplexControl cc, const QStyleOptionComplex * opt, QPainter * p, const QWidget * widget = 0 ) const

$prototypeV2=virtual void drawControl( QStyle::ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const

$prototypeV2=virtual void drawPrimitive( QStyle::PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * w = 0 ) const

$prototypeV2=virtual bool event( QEvent * e )

$prototypeV2=virtual int pixelMetric( QStyle::PixelMetric pm, const QStyleOption * opt = 0, const QWidget * widget = 0 ) const

$prototypeV2=virtual void polish( QPalette & pal )

$prototypeV2=virtual QSize sizeFromContents( QStyle::ContentsType ct, const QStyleOption * opt, const QSize & contentsSize, const QWidget * widget = 0 ) const

$prototypeV2=virtual QPalette standardPalette() const

$prototypeV2=virtual QPixmap standardPixmap( QStyle::StandardPixmap standardPixmap, const QStyleOption * opt, const QWidget * widget = 0 ) const

$prototypeV2=virtual int styleHint( QStyle::StyleHint hint, const QStyleOption * opt = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const

$prototypeV2=virtual QRect subControlRect( QStyle::ComplexControl cc, const QStyleOptionComplex * opt, QStyle::SubControl sc, const QWidget * widget = 0 ) const

$prototypeV2=virtual QRect subElementRect( QStyle::SubElement sr, const QStyleOption * opt, const QWidget * widget = 0 ) const

#pragma ENDDUMP
