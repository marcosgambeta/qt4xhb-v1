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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=int combinedLayoutSpacing( QSizePolicy::ControlTypes controls1, QSizePolicy::ControlTypes controls2, Qt::Orientation orientation, QStyleOption * option = 0, QWidget * widget = 0 ) const

$prototypeV2=virtual void drawComplexControl( QStyle::ComplexControl control, const QStyleOptionComplex * option, QPainter * painter, const QWidget * widget = 0 ) const = 0

$prototypeV2=virtual void drawControl( QStyle::ControlElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const = 0

$prototypeV2=virtual void drawItemPixmap( QPainter * painter, const QRect & rectangle, int alignment, const QPixmap & pixmap ) const

$prototypeV2=virtual void drawItemText( QPainter * painter, const QRect & rectangle, int alignment, const QPalette & palette, bool enabled, const QString & text, QPalette::ColorRole textRole = QPalette::NoRole ) const

$prototypeV2=virtual void drawPrimitive( QStyle::PrimitiveElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const = 0

$prototypeV2=virtual QPixmap generatedIconPixmap( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * option ) const = 0

$prototypeV2=virtual QStyle::SubControl hitTestComplexControl( QStyle::ComplexControl control, const QStyleOptionComplex * option, const QPoint & position, const QWidget * widget = 0 ) const = 0

$prototypeV2=virtual QRect itemPixmapRect( const QRect & rectangle, int alignment, const QPixmap & pixmap ) const

$prototypeV2=virtual QRect itemTextRect( const QFontMetrics & metrics, const QRect & rectangle, int alignment, bool enabled, const QString & text ) const

$prototypeV2=int layoutSpacing( QSizePolicy::ControlType control1, QSizePolicy::ControlType control2, Qt::Orientation orientation, const QStyleOption * option = 0, const QWidget * widget = 0 ) const

$prototypeV2=virtual int pixelMetric( QStyle::PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const = 0

$prototype=virtual void polish ( QWidget * widget )
$internalVirtualMethod=|void|polish,polish1|QWidget *

$prototype=virtual void polish ( QApplication * application )
$internalVirtualMethod=|void|polish,polish2|QApplication *

$prototype=virtual void polish ( QPalette & palette )
$internalVirtualMethod=|void|polish,polish3|QPalette &

/*
[1]virtual void polish ( QWidget * widget )
[2]virtual void polish ( QApplication * application )
[3]virtual void polish ( QPalette & palette )
*/

HB_FUNC_STATIC( QSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QStyle_polish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QStyle_polish2();
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QStyle_polish3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=polish

$prototypeV2=const QStyle * proxy() const

$prototypeV2=virtual QSize sizeFromContents( QStyle::ContentsType type, const QStyleOption * option, const QSize & contentsSize, const QWidget * widget = 0 ) const = 0

$prototypeV2=QIcon standardIcon( QStyle::StandardPixmap standardIcon, const QStyleOption * option = 0, const QWidget * widget = 0 ) const

$prototypeV2=virtual QPalette standardPalette() const

$prototypeV2=virtual int styleHint( QStyle::StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const = 0

$prototypeV2=virtual QRect subControlRect( QStyle::ComplexControl control, const QStyleOptionComplex * option, QStyle::SubControl subControl, const QWidget * widget = 0 ) const = 0

$prototypeV2=virtual QRect subElementRect( QStyle::SubElement element, const QStyleOption * option, const QWidget * widget = 0 ) const = 0

$prototype=virtual void unpolish ( QWidget * widget )
$virtualMethod=|void|unpolish,unpolish1|QWidget *

$prototype=virtual void unpolish ( QApplication * application )
$virtualMethod=|void|unpolish,unpolish2|QApplication *

/*
[1]virtual void unpolish ( QWidget * widget )
[2]virtual void unpolish ( QApplication * application )
*/

HB_FUNC_STATIC( QSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSTYLE_UNPOLISH1 );
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    HB_FUNC_EXEC( QSTYLE_UNPOLISH2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=unpolish

$prototypeV2=QRect alignedRect( Qt::LayoutDirection direction, Qt::Alignment alignment, const QSize & size, const QRect & rectangle )

$prototypeV2=static int sliderPositionFromValue( int min, int max, int logicalValue, int span, bool upsideDown = false )

$prototypeV2=static int sliderValueFromPosition( int min, int max, int position, int span, bool upsideDown = false )

$prototypeV2=static Qt::Alignment visualAlignment( Qt::LayoutDirection direction, Qt::Alignment alignment )

$prototypeV2=static QPoint visualPos( Qt::LayoutDirection direction, const QRect & boundingRectangle, const QPoint & logicalPosition )

$prototypeV2=static QRect visualRect( Qt::LayoutDirection direction, const QRect & boundingRectangle, const QRect & logicalRectangle )

$beginSignals
$signal=|currentChanged(int)
$signal=|tabCloseRequested(int)
$signal=|tabMoved(int,int)
$endSignals

#pragma ENDDUMP
