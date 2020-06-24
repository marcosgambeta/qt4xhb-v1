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

$prototype=QCleanlooksStyle ()
$constructor=|new|

$deleteMethod

$prototypeV2=virtual void drawComplexControl( QStyle::ComplexControl control, const QStyleOptionComplex * option, QPainter * painter, const QWidget * widget ) const

$prototypeV2=virtual void drawControl( QStyle::ControlElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget ) const

$prototypeV2=virtual void drawItemPixmap( QPainter * painter, const QRect & rect, int alignment, const QPixmap & pixmap ) const

$prototypeV2=virtual void drawItemText( QPainter * painter, const QRect & rectangle, int alignment, const QPalette & palette, bool enabled, const QString & text, QPalette::ColorRole textRole = QPalette::NoRole ) const

$prototypeV2=virtual void drawPrimitive( QStyle::PrimitiveElement elem, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const

$prototypeV2=virtual QPixmap generatedIconPixmap( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * opt ) const

$prototypeV2=virtual QStyle::SubControl hitTestComplexControl( QStyle::ComplexControl cc, const QStyleOptionComplex * opt, const QPoint & pt, const QWidget * w = 0 ) const

$prototypeV2=virtual QRect itemPixmapRect( const QRect & r, int flags, const QPixmap & pixmap ) const

$prototypeV2=virtual int pixelMetric( QStyle::PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const

$prototype=virtual void polish ( QWidget * widget )
$internalVirtualMethod=|void|polish,polish1|QWidget *

$prototype=virtual void polish ( QApplication * app )
$internalVirtualMethod=|void|polish,polish2|QApplication *

$prototype=virtual void polish ( QPalette & pal )
$internalVirtualMethod=|void|polish,polish3|QPalette &

/*
[1]virtual void polish ( QWidget * widget )
[2]virtual void polish ( QApplication * app )
[3]virtual void polish ( QPalette & pal )
*/

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
$addMethod=polish

$prototypeV2=virtual QSize sizeFromContents( QStyle::ContentsType type, const QStyleOption * option, const QSize & size, const QWidget * widget ) const

$prototypeV2=virtual QPalette standardPalette() const

$prototypeV2=virtual QPixmap standardPixmap( QStyle::StandardPixmap standardPixmap, const QStyleOption * opt, const QWidget * widget = 0 ) const

$prototypeV2=virtual int styleHint( QStyle::StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const

$prototypeV2=virtual QRect subControlRect( QStyle::ComplexControl control, const QStyleOptionComplex * option, QStyle::SubControl subControl, const QWidget * widget ) const

$prototypeV2=virtual QRect subElementRect( QStyle::SubElement sr, const QStyleOption * opt, const QWidget * w = 0 ) const

$prototype=virtual void unpolish ( QWidget * widget )
$internalVirtualMethod=|void|unpolish,unpolish1|QWidget *

$prototype=virtual void unpolish ( QApplication * app )
$internalVirtualMethod=|void|unpolish,unpolish2|QApplication *

/*
[1]virtual void unpolish ( QWidget * widget )
[2]virtual void unpolish ( QApplication * app )
*/

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
$addMethod=unpolish

#pragma ENDDUMP
