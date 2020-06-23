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

$beginClassFrom=QStyle

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCommonStyle ()
$constructor=|new|

$deleteMethod

$prototype=virtual void drawComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,QPainter *,const QWidget *=0

$prototype=virtual void drawControl ( ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawControl|QStyle::ControlElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototypeV2=virtual QPixmap generatedIconPixmap( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * opt ) const

$prototype=virtual SubControl hitTestComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, const QPoint & pt, const QWidget * widget = 0 ) const
$virtualMethod=|QStyle::SubControl|hitTestComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,const QPoint &,const QWidget *=0

$prototype=virtual int pixelMetric ( PixelMetric m, const QStyleOption * opt = 0, const QWidget * widget = 0 ) const
$virtualMethod=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=0,const QWidget *=0

$prototype=virtual void polish ( QPalette & pal )
$internalVirtualMethod=|void|polish,polish1|QPalette &

$prototype=virtual void polish ( QApplication * app )
$internalVirtualMethod=|void|polish,polish2|QApplication *

$prototype=virtual void polish ( QWidget * widget )
$internalVirtualMethod=|void|polish,polish3|QWidget *

/*
[1]virtual void polish ( QPalette & pal )
[2]virtual void polish ( QApplication * app )
[3]virtual void polish ( QWidget * widget )
*/

HB_FUNC_STATIC( QCOMMONSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QCommonStyle_polish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QCommonStyle_polish2();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QCommonStyle_polish3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=polish

$prototype=virtual QSize sizeFromContents ( ContentsType ct, const QStyleOption * opt, const QSize & csz, const QWidget * widget = 0 ) const
$virtualMethod=|QSize|sizeFromContents|QStyle::ContentsType,const QStyleOption *,const QSize &,const QWidget *=0

$prototype=virtual QPixmap standardPixmap ( StandardPixmap sp, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
$virtualMethod=|QPixmap|standardPixmap|QStyle::StandardPixmap,const QStyleOption *=0,const QWidget *=0

$prototype=virtual int styleHint ( StyleHint sh, const QStyleOption * opt = 0, const QWidget * widget = 0, QStyleHintReturn * hret = 0 ) const
$virtualMethod=|int|styleHint|QStyle::StyleHint,const QStyleOption *=0,const QWidget *=0,QStyleHintReturn *=0

$prototype=virtual QRect subControlRect ( ComplexControl cc, const QStyleOptionComplex * opt, SubControl sc, const QWidget * widget = 0 ) const
$virtualMethod=|QRect|subControlRect|QStyle::ComplexControl,const QStyleOptionComplex *,QStyle::SubControl,const QWidget *=0

$prototype=virtual QRect subElementRect ( SubElement sr, const QStyleOption * opt, const QWidget * widget = 0 ) const
$virtualMethod=|QRect|subElementRect|QStyle::SubElement,const QStyleOption *,const QWidget *=0

$prototype=virtual void unpolish ( QWidget * widget )
$internalVirtualMethod=|void|unpolish,unpolish1|QWidget *

$prototype=virtual void unpolish ( QApplication * application )
$internalVirtualMethod=|void|unpolish,unpolish2|QApplication *

/*
[1]virtual void unpolish ( QWidget * widget )
[2]virtual void unpolish ( QApplication * application )
*/

HB_FUNC_STATIC( QCOMMONSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QCommonStyle_unpolish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QCommonStyle_unpolish2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=unpolish

#pragma ENDDUMP
