/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QCommonStyle INHERIT QStyle

   METHOD new
   METHOD delete
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawPrimitive
   METHOD generatedIconPixmap
   METHOD hitTestComplexControl
   METHOD pixelMetric
   METHOD polish
   METHOD sizeFromContents
   METHOD standardPixmap
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect
   METHOD unpolish

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCommonStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QCommonStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QCommonStyle()
*/
HB_FUNC_STATIC( QCOMMONSTYLE_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QCommonStyle * obj = new QCommonStyle();
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOMMONSTYLE_DELETE )
{
  QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

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
virtual void drawComplexControl( QStyle::ComplexControl cc, const QStyleOptionComplex * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_DRAWCOMPLEXCONTROL )
{
  QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 3, 4 ) && HB_ISNUM( 1 ) && ISQSTYLEOPTIONCOMPLEX( 2 ) && ISQPAINTER( 3 ) && ( ISQWIDGET( 4 ) || HB_ISNIL( 4 ) ) )
    {
#endif
      obj->drawComplexControl( ( QStyle::ComplexControl ) hb_parni( 1 ), PQSTYLEOPTIONCOMPLEX( 2 ), PQPAINTER( 3 ), OPQWIDGET( 4, 0 ) );
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
virtual void drawControl( QStyle::ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_DRAWCONTROL )
{
  QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 3, 4 ) && HB_ISNUM( 1 ) && ISQSTYLEOPTION( 2 ) && ISQPAINTER( 3 ) && ( ISQWIDGET( 4 ) || HB_ISNIL( 4 ) ) )
    {
#endif
      obj->drawControl( ( QStyle::ControlElement ) hb_parni( 1 ), PQSTYLEOPTION( 2 ), PQPAINTER( 3 ), OPQWIDGET( 4, 0 ) );
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
virtual void drawPrimitive( QStyle::PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_DRAWPRIMITIVE )
{
  QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 3, 4 ) && HB_ISNUM( 1 ) && ISQSTYLEOPTION( 2 ) && ISQPAINTER( 3 ) && ( ISQWIDGET( 4 ) || HB_ISNIL( 4 ) ) )
    {
#endif
      obj->drawPrimitive( ( QStyle::PrimitiveElement ) hb_parni( 1 ), PQSTYLEOPTION( 2 ), PQPAINTER( 3 ), OPQWIDGET( 4, 0 ) );
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
virtual QPixmap generatedIconPixmap( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * opt ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_GENERATEDICONPIXMAP )
{
  QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 3 ) && HB_ISNUM( 1 ) && ISQPIXMAP( 2 ) && ISQSTYLEOPTION( 3 ) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->generatedIconPixmap( ( QIcon::Mode ) hb_parni( 1 ), *PQPIXMAP( 2 ), PQSTYLEOPTION( 3 ) ) );
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
virtual QStyle::SubControl hitTestComplexControl( QStyle::ComplexControl cc, const QStyleOptionComplex * opt, const QPoint & pt, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_HITTESTCOMPLEXCONTROL )
{
  QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 3, 4 ) && HB_ISNUM( 1 ) && ISQSTYLEOPTIONCOMPLEX( 2 ) && ISQPOINT( 3 ) && ( ISQWIDGET( 4 ) || HB_ISNIL( 4 ) ) )
    {
#endif
      RENUM( obj->hitTestComplexControl( ( QStyle::ComplexControl ) hb_parni( 1 ), PQSTYLEOPTIONCOMPLEX( 2 ), *PQPOINT( 3 ), OPQWIDGET( 4, 0 ) ) );
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
virtual int pixelMetric( QStyle::PixelMetric m, const QStyleOption * opt = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_PIXELMETRIC )
{
  QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 3 ) && HB_ISNUM( 1 ) && ( ISQSTYLEOPTION( 2 ) || HB_ISNIL( 2 ) ) && ( ISQWIDGET( 3 ) || HB_ISNIL( 3 ) ) )
    {
#endif
      RINT( obj->pixelMetric( ( QStyle::PixelMetric ) hb_parni( 1 ), HB_ISNIL( 2 ) ? 0 : static_cast< QStyleOption * >( Qt4xHb::itemGetPtr( 2 ) ), OPQWIDGET( 3, 0 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QCOMMONSTYLE_POLISH )
{
  if( ISNUMPAR( 1 ) && ISQPALETTE( 1 ) )
  {
    /*
    virtual void polish( QPalette & pal )
    */
    QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->polish( *PQPALETTE( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else if( ISNUMPAR( 1 ) && ISQAPPLICATION( 1 ) )
  {
    /*
    virtual void polish( QApplication * app )
    */
    QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->polish( PQAPPLICATION( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else if( ISNUMPAR( 1 ) && ISQWIDGET( 1 ) )
  {
    /*
    virtual void polish( QWidget * widget )
    */
    QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->polish( PQWIDGET( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QSize sizeFromContents( QStyle::ContentsType ct, const QStyleOption * opt, const QSize & csz, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_SIZEFROMCONTENTS )
{
  QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 3, 4 ) && HB_ISNUM( 1 ) && ISQSTYLEOPTION( 2 ) && ISQSIZE( 3 ) && ( ISQWIDGET( 4 ) || HB_ISNIL( 4 ) ) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeFromContents( ( QStyle::ContentsType ) hb_parni( 1 ), PQSTYLEOPTION( 2 ), *PQSIZE( 3 ), OPQWIDGET( 4, 0 ) ) );
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
virtual QPixmap standardPixmap( QStyle::StandardPixmap sp, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_STANDARDPIXMAP )
{
  QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 3 ) && HB_ISNUM( 1 ) && ( ISQSTYLEOPTION( 2 ) || HB_ISNIL( 2 ) ) && ( ISQWIDGET( 3 ) || HB_ISNIL( 3 ) ) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->standardPixmap( ( QStyle::StandardPixmap ) hb_parni( 1 ), HB_ISNIL( 2 ) ? 0 : static_cast< QStyleOption * >( Qt4xHb::itemGetPtr( 2 ) ), OPQWIDGET( 3, 0 ) ) );
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
virtual int styleHint( QStyle::StyleHint sh, const QStyleOption * opt = 0, const QWidget * widget = 0, QStyleHintReturn * hret = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_STYLEHINT )
{
  QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 4 ) && HB_ISNUM( 1 ) && ( ISQSTYLEOPTION( 2 ) || HB_ISNIL( 2 ) ) && ( ISQWIDGET( 3 ) || HB_ISNIL( 3 ) ) && ( ISQSTYLEHINTRETURN( 4 ) || HB_ISNIL( 4 ) ) )
    {
#endif
      RINT( obj->styleHint( ( QStyle::StyleHint ) hb_parni( 1 ), HB_ISNIL( 2 ) ? 0 : static_cast< QStyleOption * >( Qt4xHb::itemGetPtr( 2 ) ), OPQWIDGET( 3, 0 ), HB_ISNIL( 4 ) ? 0 : static_cast< QStyleHintReturn * >( Qt4xHb::itemGetPtr( 4 ) ) ) );
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
virtual QRect subControlRect( QStyle::ComplexControl cc, const QStyleOptionComplex * opt, QStyle::SubControl sc, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_SUBCONTROLRECT )
{
  QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 3, 4 ) && HB_ISNUM( 1 ) && ISQSTYLEOPTIONCOMPLEX( 2 ) && HB_ISNUM( 3 ) && ( ISQWIDGET( 4 ) || HB_ISNIL( 4 ) ) )
    {
#endif
      QRect * ptr = new QRect( obj->subControlRect( ( QStyle::ComplexControl ) hb_parni( 1 ), PQSTYLEOPTIONCOMPLEX( 2 ), ( QStyle::SubControl ) hb_parni( 3 ), OPQWIDGET( 4, 0 ) ) );
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
virtual QRect subElementRect( QStyle::SubElement sr, const QStyleOption * opt, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_SUBELEMENTRECT )
{
  QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 2, 3 ) && HB_ISNUM( 1 ) && ISQSTYLEOPTION( 2 ) && ( ISQWIDGET( 3 ) || HB_ISNIL( 3 ) ) )
    {
#endif
      QRect * ptr = new QRect( obj->subElementRect( ( QStyle::SubElement ) hb_parni( 1 ), PQSTYLEOPTION( 2 ), OPQWIDGET( 3, 0 ) ) );
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

HB_FUNC_STATIC( QCOMMONSTYLE_UNPOLISH )
{
  if( ISNUMPAR( 1 ) && ISQWIDGET( 1 ) )
  {
    /*
    virtual void unpolish( QWidget * widget )
    */
    QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->unpolish( PQWIDGET( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else if( ISNUMPAR( 1 ) && ISQAPPLICATION( 1 ) )
  {
    /*
    virtual void unpolish( QApplication * application )
    */
    QCommonStyle * obj = qobject_cast< QCommonStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->unpolish( PQAPPLICATION( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
