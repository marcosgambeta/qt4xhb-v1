$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QPALETTE
REQUEST QPIXMAP
REQUEST QRECT
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

$destructor

#pragma BEGINDUMP

#include <QMotifStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QMotifStyle ( bool useHighlightCols = false )
HB_FUNC_STATIC( QMOTIFSTYLE_NEW )
{
  QMotifStyle * o = new QMotifStyle ( OPBOOL(1,false) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=void setUseHighlightColors ( bool arg )
$method=|void|setUseHighlightColors|bool

$prototype=bool useHighlightColors () const
$method=|bool|useHighlightColors|

$prototype=virtual void drawComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, QPainter * p, const QWidget * widget = 0 ) const
HB_FUNC_STATIC( QMOTIFSTYLE_DRAWCOMPLEXCONTROL )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->drawComplexControl ( (QStyle::ComplexControl) par1, par2, PQPAINTER(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=virtual void drawControl ( ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
HB_FUNC_STATIC( QMOTIFSTYLE_DRAWCONTROL )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->drawControl ( (QStyle::ControlElement) par1, par2, PQPAINTER(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * w = 0 ) const
HB_FUNC_STATIC( QMOTIFSTYLE_DRAWPRIMITIVE )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->drawPrimitive ( (QStyle::PrimitiveElement) par1, par2, PQPAINTER(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=virtual bool event ( QEvent * e )
$virtualMethod=|bool|event|QEvent *

$prototype=virtual int pixelMetric ( PixelMetric pm, const QStyleOption * opt = 0, const QWidget * widget = 0 ) const
$virtualMethod=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=0,const QWidget *=0

$prototype=virtual void polish ( QPalette & pal )
HB_FUNC_STATIC( QMOTIFSTYLE_POLISH )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPalette * par1 = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->polish ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=virtual QSize sizeFromContents ( ContentsType ct, const QStyleOption * opt, const QSize & contentsSize, const QWidget * widget = 0 ) const
HB_FUNC_STATIC( QMOTIFSTYLE_SIZEFROMCONTENTS )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * ptr = new QSize( obj->sizeFromContents ( (QStyle::ContentsType) par1, par2, *PQSIZE(3), par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

$prototype=virtual QPalette standardPalette () const
HB_FUNC_STATIC( QMOTIFSTYLE_STANDARDPALETTE )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->standardPalette () );
    _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}

$prototype=virtual QPixmap standardPixmap ( StandardPixmap standardPixmap, const QStyleOption * opt, const QWidget * widget = 0 ) const
HB_FUNC_STATIC( QMOTIFSTYLE_STANDARDPIXMAP )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * ptr = new QPixmap( obj->standardPixmap ( (QStyle::StandardPixmap) par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

$prototype=virtual int styleHint ( StyleHint hint, const QStyleOption * opt = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const
$virtualMethod=|int|styleHint|QStyle::StyleHint,const QStyleOption *=0,const QWidget *=0,QStyleHintReturn *=0

$prototype=virtual QRect subControlRect ( ComplexControl cc, const QStyleOptionComplex * opt, SubControl sc, const QWidget * widget = 0 ) const
HB_FUNC_STATIC( QMOTIFSTYLE_SUBCONTROLRECT )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->subControlRect ( (QStyle::ComplexControl) par1, par2, (QStyle::SubControl) par3, par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

$prototype=virtual QRect subElementRect ( SubElement sr, const QStyleOption * opt, const QWidget * widget = 0 ) const
HB_FUNC_STATIC( QMOTIFSTYLE_SUBELEMENTRECT )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->subElementRect ( (QStyle::SubElement) par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

#pragma ENDDUMP
