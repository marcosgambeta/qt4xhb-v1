%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPALETTE
#endif

CLASS QCDEStyle INHERIT QMotifStyle

   METHOD new
   METHOD delete
   METHOD drawControl
   METHOD drawPrimitive
   METHOD pixelMetric
   METHOD standardPalette

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QCDEStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QCDEStyle ( bool useHighlightCols = false )
$constructor=|new|bool=false

$deleteMethod

$prototype=virtual void drawControl ( ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawControl|QStyle::ControlElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual int pixelMetric ( PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
$virtualMethod=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=0,const QWidget *=0

$prototype=virtual QPalette standardPalette () const
$virtualMethod=|QPalette|standardPalette|

#pragma ENDDUMP
