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

$beginClassFrom=QWindowsStyle

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWindowsXPStyle ()
$constructor=|new|

$deleteMethod

$prototypeV2=virtual void drawComplexControl( QStyle::ComplexControl cc, const QStyleOptionComplex * option, QPainter * p, const QWidget * widget = 0 ) const

$prototypeV2=virtual void drawControl( QStyle::ControlElement element, const QStyleOption * option, QPainter * p, const QWidget * widget = 0 ) const

$prototypeV2=virtual void drawPrimitive( QStyle::PrimitiveElement pe, const QStyleOption * option, QPainter * p, const QWidget * widget = 0 ) const

$prototypeV2=virtual int pixelMetric( QStyle::PixelMetric pm, const QStyleOption * option = 0, const QWidget * widget = 0 ) const

$prototype=virtual void polish ( QApplication * app )
$internalVirtualMethod=|void|polish,polish1|QApplication *

$prototype=virtual void polish ( QWidget * widget )
$internalVirtualMethod=|void|polish,polish2|QWidget *

$prototype=virtual void polish ( QPalette & pal )
$internalVirtualMethod=|void|polish,polish3|QPalette &

/*
[1]virtual void polish ( QApplication * app )
[2]virtual void polish ( QWidget * widget )
[3]virtual void polish ( QPalette & pal )
*/

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
$addMethod=polish

$prototypeV2=virtual QSize sizeFromContents( QStyle::ContentsType ct, const QStyleOption * option, const QSize & contentsSize, const QWidget * widget = 0 ) const

$prototypeV2=virtual QPalette standardPalette() const

$prototypeV2=virtual QPixmap standardPixmap( QStyle::StandardPixmap standardPixmap, const QStyleOption * option, const QWidget * widget = 0 ) const

$prototypeV2=virtual int styleHint( QStyle::StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const

$prototypeV2=virtual QRect subControlRect( QStyle::ComplexControl cc, const QStyleOptionComplex * option, QStyle::SubControl subControl, const QWidget * widget = 0 ) const

$prototypeV2=virtual QRect subElementRect( QStyle::SubElement sr, const QStyleOption * option, const QWidget * widget = 0 ) const

$prototype=virtual void unpolish ( QApplication * app )
$internalVirtualMethod=|void|unpolish,unpolish1|QApplication *

$prototype=virtual void unpolish ( QWidget * widget )
$internalVirtualMethod=|void|unpolish,unpolish2|QWidget *

/*
[1]virtual void unpolish ( QApplication * app )
[2]virtual void unpolish ( QWidget * widget )
*/

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
$addMethod=unpolish

#pragma ENDDUMP
