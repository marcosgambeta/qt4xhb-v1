%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSIZE
REQUEST QPALETTE
#endif

CLASS QCleanlooksStyle INHERIT QWindowsStyle

   METHOD new
   METHOD delete
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawItemPixmap
   METHOD drawItemText
   METHOD drawPrimitive
   METHOD generatedIconPixmap
   METHOD hitTestComplexControl
   METHOD itemPixmapRect
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

$prototype=QCleanlooksStyle ()
$constructor=|new|

$deleteMethod

$prototype=virtual void drawComplexControl ( ComplexControl control, const QStyleOptionComplex * option, QPainter * painter, const QWidget * widget ) const
$virtualMethod=|void|drawComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,QPainter *,const QWidget *

$prototype=virtual void drawControl ( ControlElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget ) const
$virtualMethod=|void|drawControl|QStyle::ControlElement,const QStyleOption *,QPainter *,const QWidget *

$prototype=virtual void drawItemPixmap ( QPainter * painter, const QRect & rect, int alignment, const QPixmap & pixmap ) const
$virtualMethod=|void|drawItemPixmap|QPainter *,const QRect &,int,const QPixmap &

$prototype=virtual void drawItemText ( QPainter * painter, const QRect & rectangle, int alignment, const QPalette & palette, bool enabled, const QString & text, QPalette::ColorRole textRole = QPalette::NoRole ) const
$virtualMethod=|void|drawItemText|QPainter *,const QRect &,int,const QPalette &,bool,const QString &,QPalette::ColorRole=QPalette::NoRole

$prototype=virtual void drawPrimitive ( PrimitiveElement elem, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const
$virtualMethod=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual QPixmap generatedIconPixmap ( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * opt ) const
$virtualMethod=|QPixmap|generatedIconPixmap|QIcon::Mode,const QPixmap &,const QStyleOption *

$prototype=virtual SubControl hitTestComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, const QPoint & pt, const QWidget * w = 0 ) const
$virtualMethod=|QStyle::SubControl|hitTestComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,const QPoint &,const QWidget *=0

$prototype=virtual QRect itemPixmapRect ( const QRect & r, int flags, const QPixmap & pixmap ) const
$virtualMethod=|QRect|itemPixmapRect|const QRect &,int,const QPixmap &

$prototype=virtual int pixelMetric ( PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
$virtualMethod=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=0,const QWidget *=0

$prototype=virtual void polish ( QWidget * widget )
$internalVirtualMethod=|void|polish,polish1|QWidget *

$prototype=virtual void polish ( QApplication * app )
$internalVirtualMethod=|void|polish,polish2|QApplication *

$prototype=virtual void polish ( QPalette & pal )
$internalVirtualMethod=|void|polish,polish3|QPalette &

//[1]virtual void polish ( QWidget * widget )
//[2]virtual void polish ( QApplication * app )
//[3]virtual void polish ( QPalette & pal )

HB_FUNC_STATIC( QCLEANLOOKSSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QCleanlooksStyle_polish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QCleanlooksStyle_polish2();
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QCleanlooksStyle_polish3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual QSize sizeFromContents ( ContentsType type, const QStyleOption * option, const QSize & size, const QWidget * widget ) const
$virtualMethod=|QSize|sizeFromContents|QStyle::ContentsType,const QStyleOption *,const QSize &,const QWidget *

$prototype=virtual QPalette standardPalette () const
$virtualMethod=|QPalette|standardPalette|

$prototype=virtual QPixmap standardPixmap ( StandardPixmap standardPixmap, const QStyleOption * opt, const QWidget * widget = 0 ) const
$virtualMethod=|QPixmap|standardPixmap|QStyle::StandardPixmap,const QStyleOption *,const QWidget *=0

$prototype=virtual int styleHint ( StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const
$virtualMethod=|int|styleHint|QStyle::StyleHint,const QStyleOption *=0,const QWidget *=0,QStyleHintReturn *=0

$prototype=virtual QRect subControlRect ( ComplexControl control, const QStyleOptionComplex * option, SubControl subControl, const QWidget * widget ) const
$virtualMethod=|QRect|subControlRect|QStyle::ComplexControl,const QStyleOptionComplex *,QStyle::SubControl,const QWidget *

$prototype=virtual QRect subElementRect ( SubElement sr, const QStyleOption * opt, const QWidget * w = 0 ) const
$virtualMethod=|QRect|subElementRect|QStyle::SubElement,const QStyleOption *,const QWidget *=0

$prototype=virtual void unpolish ( QWidget * widget )
$internalVirtualMethod=|void|unpolish,unpolish1|QWidget *

$prototype=virtual void unpolish ( QApplication * app )
$internalVirtualMethod=|void|unpolish,unpolish2|QApplication *

//[1]virtual void unpolish ( QWidget * widget )
//[2]virtual void unpolish ( QApplication * app )

HB_FUNC_STATIC( QCLEANLOOKSSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QCleanlooksStyle_unpolish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QCleanlooksStyle_unpolish2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
