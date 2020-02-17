/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPALETTE
REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QMotifStyle INHERIT QCommonStyle

   METHOD new
   METHOD delete
   METHOD setUseHighlightColors
   METHOD useHighlightColors
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawPrimitive
   METHOD event
   METHOD pixelMetric
   METHOD polish
   METHOD sizeFromContents
   METHOD standardPalette
   METHOD standardPixmap
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMotifStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QMotifStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMotifStyle ( bool useHighlightCols = false )
*/
HB_FUNC_STATIC( QMOTIFSTYLE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTLOG(1) )
  {
    QMotifStyle * o = new QMotifStyle ( OPBOOL(1,false) );
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMOTIFSTYLE_DELETE )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
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
void setUseHighlightColors ( bool arg )
*/
HB_FUNC_STATIC( QMOTIFSTYLE_SETUSEHIGHLIGHTCOLORS )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setUseHighlightColors ( PBOOL(1) );
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
bool useHighlightColors () const
*/
HB_FUNC_STATIC( QMOTIFSTYLE_USEHIGHLIGHTCOLORS )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->useHighlightColors () );
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
virtual void drawComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QMOTIFSTYLE_DRAWCOMPLEXCONTROL )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawComplexControl ( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), PQPAINTER(3), OPQWIDGET(4,0) );
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
virtual void drawControl ( ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QMOTIFSTYLE_DRAWCONTROL )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawControl ( (QStyle::ControlElement) hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4,0) );
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
virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * w = 0 ) const
*/
HB_FUNC_STATIC( QMOTIFSTYLE_DRAWPRIMITIVE )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawPrimitive ( (QStyle::PrimitiveElement) hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4,0) );
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
virtual bool event ( QEvent * e )
*/
HB_FUNC_STATIC( QMOTIFSTYLE_EVENT )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQEVENT(1) )
    {
#endif
      RBOOL( obj->event ( PQEVENT(1) ) );
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
virtual int pixelMetric ( PixelMetric pm, const QStyleOption * opt = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QMOTIFSTYLE_PIXELMETRIC )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      RINT( obj->pixelMetric ( (QStyle::PixelMetric) hb_parni(1), ISNIL(2)? 0 : (QStyleOption *) _qt4xhb_itemGetPtr(2), OPQWIDGET(3,0) ) );
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
virtual void polish ( QPalette & pal )
*/
HB_FUNC_STATIC( QMOTIFSTYLE_POLISH )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPALETTE(1) )
    {
#endif
      obj->polish ( *PQPALETTE(1) );
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
virtual QSize sizeFromContents ( ContentsType ct, const QStyleOption * opt, const QSize & contentsSize, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QMOTIFSTYLE_SIZEFROMCONTENTS )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQSIZE(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeFromContents ( (QStyle::ContentsType) hb_parni(1), PQSTYLEOPTION(2), *PQSIZE(3), OPQWIDGET(4,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
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
virtual QPalette standardPalette () const
*/
HB_FUNC_STATIC( QMOTIFSTYLE_STANDARDPALETTE )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPalette * ptr = new QPalette( obj->standardPalette () );
      _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
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
virtual QPixmap standardPixmap ( StandardPixmap standardPixmap, const QStyleOption * opt, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QMOTIFSTYLE_STANDARDPIXMAP )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->standardPixmap ( (QStyle::StandardPixmap) hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET(3,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
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
virtual int styleHint ( StyleHint hint, const QStyleOption * opt = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const
*/
HB_FUNC_STATIC( QMOTIFSTYLE_STYLEHINT )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,4) && ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) && (ISQSTYLEHINTRETURN(4)||ISNIL(4)) )
    {
#endif
      RINT( obj->styleHint ( (QStyle::StyleHint) hb_parni(1), ISNIL(2)? 0 : (QStyleOption *) _qt4xhb_itemGetPtr(2), OPQWIDGET(3,0), ISNIL(4)? 0 : (QStyleHintReturn *) _qt4xhb_itemGetPtr(4) ) );
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
virtual QRect subControlRect ( ComplexControl cc, const QStyleOptionComplex * opt, SubControl sc, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QMOTIFSTYLE_SUBCONTROLRECT )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISNUM(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      QRect * ptr = new QRect( obj->subControlRect ( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), (QStyle::SubControl) hb_parni(3), OPQWIDGET(4,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QRECT", true );
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
virtual QRect subElementRect ( SubElement sr, const QStyleOption * opt, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QMOTIFSTYLE_SUBELEMENTRECT )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      QRect * ptr = new QRect( obj->subElementRect ( (QStyle::SubElement) hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET(3,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QRECT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP