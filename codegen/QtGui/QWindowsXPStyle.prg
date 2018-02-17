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

CLASS QWindowsXPStyle INHERIT QWindowsStyle

   METHOD new
   METHOD delete
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawPrimitive
   METHOD pixelMetric
   METHOD polish
   METHOD sizeFromContents
   METHOD standardPalette
   METHOD standardPixmap
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect
   METHOD unpolish

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWindowsXPStyle ()
$constructor=|new|

$deleteMethod

$prototype=virtual void drawComplexControl ( ComplexControl cc, const QStyleOptionComplex * option, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,QPainter *,const QWidget *=0

$prototype=virtual void drawControl ( ControlElement element, const QStyleOption * option, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawControl|QStyle::ControlElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * option, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual int pixelMetric ( PixelMetric pm, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
$virtualMethod=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=0,const QWidget *=0

$prototype=virtual void polish ( QApplication * app )
$internalVirtualMethod=|void|polish,polish1|QApplication *

$prototype=virtual void polish ( QWidget * widget )
$internalVirtualMethod=|void|polish,polish2|QWidget *

$prototype=virtual void polish ( QPalette & pal )
$internalVirtualMethod=|void|polish,polish3|QPalette &

//[1]virtual void polish ( QApplication * app )
//[2]virtual void polish ( QWidget * widget )
//[3]virtual void polish ( QPalette & pal )

HB_FUNC_STATIC( QWINDOWSXPSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QWindowsXPStyle_polish1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QWindowsXPStyle_polish2();
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QWindowsXPStyle_polish3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual QSize sizeFromContents ( ContentsType ct, const QStyleOption * option, const QSize & contentsSize, const QWidget * widget = 0 ) const
$virtualMethod=|QSize|sizeFromContents|QStyle::ContentsType,const QStyleOption *,const QSize &,const QWidget *=0

$prototype=virtual QPalette standardPalette () const
$virtualMethod=|QPalette|standardPalette|

$prototype=virtual QPixmap standardPixmap ( StandardPixmap standardPixmap, const QStyleOption * option, const QWidget * widget = 0 ) const
$virtualMethod=|QPixmap|standardPixmap|QStyle::StandardPixmap,const QStyleOption *,const QWidget *=0

$prototype=virtual int styleHint ( StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const
$virtualMethod=|int|styleHint|QStyle::StyleHint,const QStyleOption *=0,const QWidget *=0,QStyleHintReturn *=0

$prototype=virtual QRect subControlRect ( ComplexControl cc, const QStyleOptionComplex * option, SubControl subControl, const QWidget * widget = 0 ) const
$virtualMethod=|QRect|subControlRect|QStyle::ComplexControl,const QStyleOptionComplex *,QStyle::SubControl,const QWidget *=0

$prototype=virtual QRect subElementRect ( SubElement sr, const QStyleOption * option, const QWidget * widget = 0 ) const
$virtualMethod=|QRect|subElementRect|QStyle::SubElement,const QStyleOption *,const QWidget *=0

$prototype=virtual void unpolish ( QApplication * app )
$internalVirtualMethod=|void|unpolish,unpolish1|QApplication *

$prototype=virtual void unpolish ( QWidget * widget )
$internalVirtualMethod=|void|unpolish,unpolish2|QWidget *

//[1]virtual void unpolish ( QApplication * app )
//[2]virtual void unpolish ( QWidget * widget )

HB_FUNC_STATIC( QWINDOWSXPSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QWindowsXPStyle_unpolish1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QWindowsXPStyle_unpolish2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
