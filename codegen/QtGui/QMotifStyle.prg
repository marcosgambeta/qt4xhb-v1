%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QPALETTE
REQUEST QPIXMAP
REQUEST QRECT
#endif

CLASS QMotifStyle INHERIT QCommonStyle

   METHOD new
   METHOD delete
   METHOD setUseHighlightColors
   METHOD useHighlightColors
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawPrimitive
   METHOD event
   METHOD pixelMetric
   METHOD polish
   METHOD sizeFromContents
   METHOD standardPalette
   METHOD standardPixmap
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMotifStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QMotifStyle ( bool useHighlightCols = false )
$constructor=|new|bool=false

$deleteMethod

$prototype=void setUseHighlightColors ( bool arg )
$method=|void|setUseHighlightColors|bool

$prototype=bool useHighlightColors () const
$method=|bool|useHighlightColors|

$prototype=virtual void drawComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,QPainter *,const QWidget *=0

$prototype=virtual void drawControl ( ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawControl|QStyle::ControlElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * w = 0 ) const
$virtualMethod=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual bool event ( QEvent * e )
$virtualMethod=|bool|event|QEvent *

$prototype=virtual int pixelMetric ( PixelMetric pm, const QStyleOption * opt = 0, const QWidget * widget = 0 ) const
$virtualMethod=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=0,const QWidget *=0

$prototype=virtual void polish ( QPalette & pal )
$virtualMethod=|void|polish|QPalette &

$prototype=virtual QSize sizeFromContents ( ContentsType ct, const QStyleOption * opt, const QSize & contentsSize, const QWidget * widget = 0 ) const
$virtualMethod=|QSize|sizeFromContents|QStyle::ContentsType,const QStyleOption *,const QSize &,const QWidget *=0

$prototype=virtual QPalette standardPalette () const
$virtualMethod=|QPalette|standardPalette|

$prototype=virtual QPixmap standardPixmap ( StandardPixmap standardPixmap, const QStyleOption * opt, const QWidget * widget = 0 ) const
$virtualMethod=|QPixmap|standardPixmap|QStyle::StandardPixmap,const QStyleOption *,const QWidget *=0

$prototype=virtual int styleHint ( StyleHint hint, const QStyleOption * opt = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const
$virtualMethod=|int|styleHint|QStyle::StyleHint,const QStyleOption *=0,const QWidget *=0,QStyleHintReturn *=0

$prototype=virtual QRect subControlRect ( ComplexControl cc, const QStyleOptionComplex * opt, SubControl sc, const QWidget * widget = 0 ) const
$virtualMethod=|QRect|subControlRect|QStyle::ComplexControl,const QStyleOptionComplex *,QStyle::SubControl,const QWidget *=0

$prototype=virtual QRect subElementRect ( SubElement sr, const QStyleOption * opt, const QWidget * widget = 0 ) const
$virtualMethod=|QRect|subElementRect|QStyle::SubElement,const QStyleOption *,const QWidget *=0

#pragma ENDDUMP
