/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
REQUEST QPALETTE
REQUEST QPIXMAP
REQUEST QPOINT
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QStyle INHERIT QObject

   METHOD delete
   METHOD combinedLayoutSpacing
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawItemPixmap
   METHOD drawItemText
   METHOD drawPrimitive
   METHOD generatedIconPixmap
   METHOD hitTestComplexControl
   METHOD itemPixmapRect
   METHOD itemTextRect
   METHOD layoutSpacing
   METHOD pixelMetric
   METHOD polish
   METHOD proxy
   METHOD sizeFromContents
   METHOD standardIcon
   METHOD standardPalette
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect
   METHOD unpolish1
   METHOD unpolish2
   METHOD unpolish
   METHOD alignedRect
   METHOD sliderPositionFromValue
   METHOD sliderValueFromPosition
   METHOD visualAlignment
   METHOD visualPos
   METHOD visualRect

   METHOD onCurrentChanged
   METHOD onTabCloseRequested
   METHOD onTabMoved

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

HB_FUNC_STATIC( QSTYLE_DELETE )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int combinedLayoutSpacing( QSizePolicy::ControlTypes controls1, QSizePolicy::ControlTypes controls2, Qt::Orientation orientation, QStyleOption * option = 0, QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QSTYLE_COMBINEDLAYOUTSPACING )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISQSTYLEOPTION(4)||ISNIL(4)) && (ISQWIDGET(5)||ISNIL(5)) )
    {
#endif
      RINT( obj->combinedLayoutSpacing( (QSizePolicy::ControlTypes) hb_parni(1), (QSizePolicy::ControlTypes) hb_parni(2), (Qt::Orientation) hb_parni(3), ISNIL(4)? 0 : (QStyleOption *) Qt4xHb::itemGetPtr(4), OPQWIDGET(5,0) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void drawComplexControl( QStyle::ComplexControl control, const QStyleOptionComplex * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_DRAWCOMPLEXCONTROL )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawComplexControl( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), PQPAINTER(3), OPQWIDGET(4,0) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void drawControl( QStyle::ControlElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_DRAWCONTROL )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawControl( (QStyle::ControlElement) hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4,0) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void drawItemPixmap( QPainter * painter, const QRect & rectangle, int alignment, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QSTYLE_DRAWITEMPIXMAP )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISQPAINTER(1) && ISQRECT(2) && ISNUM(3) && ISQPIXMAP(4) )
    {
#endif
      obj->drawItemPixmap( PQPAINTER(1), *PQRECT(2), PINT(3), *PQPIXMAP(4) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void drawItemText( QPainter * painter, const QRect & rectangle, int alignment, const QPalette & palette, bool enabled, const QString & text, QPalette::ColorRole textRole = QPalette::NoRole ) const
*/
HB_FUNC_STATIC( QSTYLE_DRAWITEMTEXT )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(6,7) && ISQPAINTER(1) && ISQRECT(2) && ISNUM(3) && ISQPALETTE(4) && ISLOG(5) && ISCHAR(6) && ISOPTNUM(7) )
    {
#endif
      obj->drawItemText( PQPAINTER(1), *PQRECT(2), PINT(3), *PQPALETTE(4), PBOOL(5), PQSTRING(6), ISNIL(7)? (QPalette::ColorRole) QPalette::NoRole : (QPalette::ColorRole) hb_parni(7) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void drawPrimitive( QStyle::PrimitiveElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_DRAWPRIMITIVE )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawPrimitive( (QStyle::PrimitiveElement) hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4,0) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPixmap generatedIconPixmap( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * option ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_GENERATEDICONPIXMAP )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISQPIXMAP(2) && ISQSTYLEOPTION(3) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->generatedIconPixmap( (QIcon::Mode) hb_parni(1), *PQPIXMAP(2), PQSTYLEOPTION(3) ) );
      Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QStyle::SubControl hitTestComplexControl( QStyle::ComplexControl control, const QStyleOptionComplex * option, const QPoint & position, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_HITTESTCOMPLEXCONTROL )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPOINT(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      RENUM( obj->hitTestComplexControl( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), *PQPOINT(3), OPQWIDGET(4,0) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QRect itemPixmapRect( const QRect & rectangle, int alignment, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QSTYLE_ITEMPIXMAPRECT )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISQPIXMAP(3) )
    {
#endif
      QRect * ptr = new QRect( obj->itemPixmapRect( *PQRECT(1), PINT(2), *PQPIXMAP(3) ) );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QRect itemTextRect( const QFontMetrics & metrics, const QRect & rectangle, int alignment, bool enabled, const QString & text ) const
*/
HB_FUNC_STATIC( QSTYLE_ITEMTEXTRECT )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && ISQFONTMETRICS(1) && ISQRECT(2) && ISNUM(3) && ISLOG(4) && ISCHAR(5) )
    {
#endif
      QRect * ptr = new QRect( obj->itemTextRect( *PQFONTMETRICS(1), *PQRECT(2), PINT(3), PBOOL(4), PQSTRING(5) ) );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int layoutSpacing( QSizePolicy::ControlType control1, QSizePolicy::ControlType control2, Qt::Orientation orientation, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QSTYLE_LAYOUTSPACING )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISQSTYLEOPTION(4)||ISNIL(4)) && (ISQWIDGET(5)||ISNIL(5)) )
    {
#endif
      RINT( obj->layoutSpacing( (QSizePolicy::ControlType) hb_parni(1), (QSizePolicy::ControlType) hb_parni(2), (Qt::Orientation) hb_parni(3), ISNIL(4)? 0 : (QStyleOption *) Qt4xHb::itemGetPtr(4), OPQWIDGET(5,0) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual int pixelMetric( QStyle::PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_PIXELMETRIC )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      RINT( obj->pixelMetric( (QStyle::PixelMetric) hb_parni(1), ISNIL(2)? 0 : (QStyleOption *) Qt4xHb::itemGetPtr(2), OPQWIDGET(3,0) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void polish ( QWidget * widget )
*/
void QStyle_polish1()
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->polish( PQWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void polish ( QApplication * application )
*/
void QStyle_polish2()
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->polish( PQAPPLICATION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void polish ( QPalette & palette )
*/
void QStyle_polish3()
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->polish( *PQPALETTE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

/*
const QStyle * proxy() const
*/
HB_FUNC_STATIC( QSTYLE_PROXY )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QStyle * ptr = obj->proxy();
      Qt4xHb::createReturnQObjectClass( ptr, "QSTYLE" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QSize sizeFromContents( QStyle::ContentsType type, const QStyleOption * option, const QSize & contentsSize, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_SIZEFROMCONTENTS )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQSIZE(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeFromContents( (QStyle::ContentsType) hb_parni(1), PQSTYLEOPTION(2), *PQSIZE(3), OPQWIDGET(4,0) ) );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QIcon standardIcon( QStyle::StandardPixmap standardIcon, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QSTYLE_STANDARDICON )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      QIcon * ptr = new QIcon( obj->standardIcon( (QStyle::StandardPixmap) hb_parni(1), ISNIL(2)? 0 : (QStyleOption *) Qt4xHb::itemGetPtr(2), OPQWIDGET(3,0) ) );
      Qt4xHb::createReturnClass( ptr, "QICON", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QPalette standardPalette() const
*/
HB_FUNC_STATIC( QSTYLE_STANDARDPALETTE )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPalette * ptr = new QPalette( obj->standardPalette() );
      Qt4xHb::createReturnClass( ptr, "QPALETTE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual int styleHint( QStyle::StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_STYLEHINT )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,4) && ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) && (ISQSTYLEHINTRETURN(4)||ISNIL(4)) )
    {
#endif
      RINT( obj->styleHint( (QStyle::StyleHint) hb_parni(1), ISNIL(2)? 0 : (QStyleOption *) Qt4xHb::itemGetPtr(2), OPQWIDGET(3,0), ISNIL(4)? 0 : (QStyleHintReturn *) Qt4xHb::itemGetPtr(4) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QRect subControlRect( QStyle::ComplexControl control, const QStyleOptionComplex * option, QStyle::SubControl subControl, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_SUBCONTROLRECT )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISNUM(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      QRect * ptr = new QRect( obj->subControlRect( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), (QStyle::SubControl) hb_parni(3), OPQWIDGET(4,0) ) );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QRect subElementRect( QStyle::SubElement element, const QStyleOption * option, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_SUBELEMENTRECT )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      QRect * ptr = new QRect( obj->subElementRect( (QStyle::SubElement) hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET(3,0) ) );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void unpolish ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTYLE_UNPOLISH1 )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->unpolish( PQWIDGET(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unpolish ( QApplication * application )
*/
HB_FUNC_STATIC( QSTYLE_UNPOLISH2 )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQAPPLICATION(1) )
    {
#endif
      obj->unpolish( PQAPPLICATION(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

/*
QRect alignedRect( Qt::LayoutDirection direction, Qt::Alignment alignment, const QSize & size, const QRect & rectangle )
*/
HB_FUNC_STATIC( QSTYLE_ALIGNEDRECT )
{
  QStyle * obj = (QStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISQSIZE(3) && ISQRECT(4) )
    {
#endif
      QRect * ptr = new QRect( obj->alignedRect( (Qt::LayoutDirection) hb_parni(1), (Qt::Alignment) hb_parni(2), *PQSIZE(3), *PQRECT(4) ) );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static int sliderPositionFromValue( int min, int max, int logicalValue, int span, bool upsideDown = false )
*/
HB_FUNC_STATIC( QSTYLE_SLIDERPOSITIONFROMVALUE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTLOG(5) )
  {
#endif
    RINT( QStyle::sliderPositionFromValue( PINT(1), PINT(2), PINT(3), PINT(4), OPBOOL(5,false) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static int sliderValueFromPosition( int min, int max, int position, int span, bool upsideDown = false )
*/
HB_FUNC_STATIC( QSTYLE_SLIDERVALUEFROMPOSITION )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTLOG(5) )
  {
#endif
    RINT( QStyle::sliderValueFromPosition( PINT(1), PINT(2), PINT(3), PINT(4), OPBOOL(5,false) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static Qt::Alignment visualAlignment( Qt::LayoutDirection direction, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QSTYLE_VISUALALIGNMENT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
#endif
    RENUM( QStyle::visualAlignment( (Qt::LayoutDirection) hb_parni(1), (Qt::Alignment) hb_parni(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QPoint visualPos( Qt::LayoutDirection direction, const QRect & boundingRectangle, const QPoint & logicalPosition )
*/
HB_FUNC_STATIC( QSTYLE_VISUALPOS )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(3) && ISNUM(1) && ISQRECT(2) && ISQPOINT(3) )
  {
#endif
    QPoint * ptr = new QPoint( QStyle::visualPos( (Qt::LayoutDirection) hb_parni(1), *PQRECT(2), *PQPOINT(3) ) );
    Qt4xHb::createReturnClass( ptr, "QPOINT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QRect visualRect( Qt::LayoutDirection direction, const QRect & boundingRectangle, const QRect & logicalRectangle )
*/
HB_FUNC_STATIC( QSTYLE_VISUALRECT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(3) && ISNUM(1) && ISQRECT(2) && ISQRECT(3) )
  {
#endif
    QRect * ptr = new QRect( QStyle::visualRect( (Qt::LayoutDirection) hb_parni(1), *PQRECT(2), *PQRECT(3) ) );
    Qt4xHb::createReturnClass( ptr, "QRECT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

void QStyleSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSTYLE_ONCURRENTCHANGED )
{
  QStyleSlots_connect_signal( "currentChanged(int)", "currentChanged(int)" );
}

HB_FUNC_STATIC( QSTYLE_ONTABCLOSEREQUESTED )
{
  QStyleSlots_connect_signal( "tabCloseRequested(int)", "tabCloseRequested(int)" );
}

HB_FUNC_STATIC( QSTYLE_ONTABMOVED )
{
  QStyleSlots_connect_signal( "tabMoved(int,int)", "tabMoved(int,int)" );
}

#pragma ENDDUMP
