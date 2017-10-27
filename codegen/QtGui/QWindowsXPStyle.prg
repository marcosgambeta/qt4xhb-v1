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
   METHOD polish1
   METHOD polish2
   METHOD polish3
   METHOD polish
   METHOD sizeFromContents
   METHOD standardPalette
   METHOD standardPixmap
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect
   METHOD unpolish1
   METHOD unpolish2
   METHOD unpolish

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWindowsXPStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWindowsXPStyle ()
*/
HB_FUNC_STATIC( QWINDOWSXPSTYLE_NEW )
{
  QWindowsXPStyle * o = new QWindowsXPStyle ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
virtual void drawComplexControl ( ComplexControl cc, const QStyleOptionComplex * option, QPainter * p, const QWidget * widget = 0 ) const
*/
$virtualMethod=|void|drawComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,QPainter *,const QWidget *=0

/*
virtual void drawControl ( ControlElement element, const QStyleOption * option, QPainter * p, const QWidget * widget = 0 ) const
*/
$virtualMethod=|void|drawControl|QStyle::ControlElement,const QStyleOption *,QPainter *,const QWidget *=0

/*
virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * option, QPainter * p, const QWidget * widget = 0 ) const
*/
$virtualMethod=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption *,QPainter *,const QWidget *=0

/*
virtual int pixelMetric ( PixelMetric pm, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
$virtualMethod=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=0,const QWidget *=0

/*
virtual void polish ( QApplication * app )
*/
$virtualMethod=|void|polish,polish1|QApplication *

/*
virtual void polish ( QWidget * widget )
*/
$virtualMethod=|void|polish,polish2|QWidget *

/*
virtual void polish ( QPalette & pal )
*/
$virtualMethod=|void|polish,polish3|QPalette &

//[1]virtual void polish ( QApplication * app )
//[2]virtual void polish ( QWidget * widget )
//[3]virtual void polish ( QPalette & pal )

HB_FUNC_STATIC( QWINDOWSXPSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    HB_FUNC_EXEC( QWINDOWSXPSTYLE_POLISH1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QWINDOWSXPSTYLE_POLISH2 );
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    HB_FUNC_EXEC( QWINDOWSXPSTYLE_POLISH3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QSize sizeFromContents ( ContentsType ct, const QStyleOption * option, const QSize & contentsSize, const QWidget * widget = 0 ) const
*/
$virtualMethod=|QSize|sizeFromContents|QStyle::ContentsType,const QStyleOption *,const QSize &,const QWidget *=0

/*
virtual QPalette standardPalette () const
*/
$virtualMethod=|QPalette|standardPalette|

/*
virtual QPixmap standardPixmap ( StandardPixmap standardPixmap, const QStyleOption * option, const QWidget * widget = 0 ) const
*/
$virtualMethod=|QPixmap|standardPixmap|QStyle::StandardPixmap,const QStyleOption *,const QWidget *=0

/*
virtual int styleHint ( StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const
*/
$virtualMethod=|int|styleHint|QStyle::StyleHint,const QStyleOption *=0,const QWidget *=0,QStyleHintReturn *=0

/*
virtual QRect subControlRect ( ComplexControl cc, const QStyleOptionComplex * option, SubControl subControl, const QWidget * widget = 0 ) const
*/
$virtualMethod=|QRect|subControlRect|QStyle::ComplexControl,const QStyleOptionComplex *,QStyle::SubControl,const QWidget *=0

/*
virtual QRect subElementRect ( SubElement sr, const QStyleOption * option, const QWidget * widget = 0 ) const
*/
$virtualMethod=|QRect|subElementRect|QStyle::SubElement,const QStyleOption *,const QWidget *=0

/*
virtual void unpolish ( QApplication * app )
*/
$virtualMethod=|void|unpolish,unpolish1|QApplication *

/*
virtual void unpolish ( QWidget * widget )
*/
$virtualMethod=|void|unpolish,unpolish2|QWidget *

//[1]virtual void unpolish ( QApplication * app )
//[2]virtual void unpolish ( QWidget * widget )

HB_FUNC_STATIC( QWINDOWSXPSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    HB_FUNC_EXEC( QWINDOWSXPSTYLE_UNPOLISH1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QWINDOWSXPSTYLE_UNPOLISH2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
