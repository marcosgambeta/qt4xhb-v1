%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QCommonStyle

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWindowsStyle ()
$constructor=|new|

$deleteMethod

$prototype=virtual void drawComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,QPainter *,const QWidget *=0

$prototype=virtual void drawControl ( ControlElement ce, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawControl|QStyle::ControlElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * w = 0 ) const
$virtualMethod=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual int pixelMetric ( PixelMetric pm, const QStyleOption * opt = 0, const QWidget * widget = 0 ) const
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

HB_FUNC_STATIC( QWINDOWSSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QWindowsStyle_polish1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QWindowsStyle_polish2();
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QWindowsStyle_polish3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=polish

$prototype=virtual QSize sizeFromContents ( ContentsType ct, const QStyleOption * opt, const QSize & csz, const QWidget * widget = 0 ) const
$virtualMethod=|QSize|sizeFromContents|QStyle::ContentsType,const QStyleOption *,const QSize &,const QWidget *=0

$prototype=virtual QPixmap standardPixmap ( StandardPixmap standardPixmap, const QStyleOption * opt, const QWidget * widget = 0 ) const
$virtualMethod=|QPixmap|standardPixmap|QStyle::StandardPixmap,const QStyleOption *,const QWidget *=0

$prototype=virtual int styleHint ( StyleHint hint, const QStyleOption * opt = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const
$virtualMethod=|int|styleHint|QStyle::StyleHint,const QStyleOption *=0,const QWidget *=0,QStyleHintReturn *=0

$prototype=virtual QRect subElementRect ( SubElement sr, const QStyleOption * opt, const QWidget * w = 0 ) const
$virtualMethod=|QRect|subElementRect|QStyle::SubElement,const QStyleOption *,const QWidget *=0

$prototype=virtual void unpolish ( QApplication * app )
$internalVirtualMethod=|void|unpolish,unpolish1|QApplication *

$prototype=virtual void unpolish ( QWidget * widget )
$internalVirtualMethod=|void|unpolish,unpolish2|QWidget *

//[1]virtual void unpolish ( QApplication * app )
//[2]virtual void unpolish ( QWidget * widget )

HB_FUNC_STATIC( QWINDOWSSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QWindowsStyle_unpolish1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QWindowsStyle_unpolish2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=unpolish

#pragma ENDDUMP
