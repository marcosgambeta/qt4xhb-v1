$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QSIZE
REQUEST QRECT
#endif

CLASS QCommonStyle INHERIT QStyle

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawPrimitive
   METHOD generatedIconPixmap
   METHOD hitTestComplexControl
   METHOD pixelMetric
   METHOD polish1
   METHOD polish2
   METHOD polish3
   METHOD polish
   METHOD sizeFromContents
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

#include <QCommonStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QCommonStyle ()
*/
$constructor=|new|

$deleteMethod

/*
virtual void drawComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_DRAWCOMPLEXCONTROL )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->drawComplexControl ( (QStyle::ComplexControl) par1, par2, PQPAINTER(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void drawControl ( ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_DRAWCONTROL )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->drawControl ( (QStyle::ControlElement) par1, par2, PQPAINTER(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_DRAWPRIMITIVE )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->drawPrimitive ( (QStyle::PrimitiveElement) par1, par2, PQPAINTER(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPixmap generatedIconPixmap ( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * opt ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_GENERATEDICONPIXMAP )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par3 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * ptr = new QPixmap( obj->generatedIconPixmap ( (QIcon::Mode) par1, *PQPIXMAP(2), par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
virtual SubControl hitTestComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, const QPoint & pt, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_HITTESTCOMPLEXCONTROL )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->hitTestComplexControl ( (QStyle::ComplexControl) par1, par2, *PQPOINT(3), par4 ) );
  }
}

/*
virtual int pixelMetric ( PixelMetric m, const QStyleOption * opt = 0, const QWidget * widget = 0 ) const
*/
$virtualMethod=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=0,const QWidget *=0

/*
virtual void polish ( QPalette & pal )
*/
$virtualMethod=|void|polish,polish1|QPalette &

/*
virtual void polish ( QApplication * app )
*/
$virtualMethod=|void|polish,polish2|QApplication *

/*
virtual void polish ( QWidget * widget )
*/
$virtualMethod=|void|polish,polish3|QWidget *

//[1]virtual void polish ( QPalette & pal )
//[2]virtual void polish ( QApplication * app )
//[3]virtual void polish ( QWidget * widget )

HB_FUNC_STATIC( QCOMMONSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    HB_FUNC_EXEC( QCOMMONSTYLE_POLISH1 );
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    HB_FUNC_EXEC( QCOMMONSTYLE_POLISH2 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QCOMMONSTYLE_POLISH3 );
  }
}

/*
virtual QSize sizeFromContents ( ContentsType ct, const QStyleOption * opt, const QSize & csz, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_SIZEFROMCONTENTS )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * ptr = new QSize( obj->sizeFromContents ( (QStyle::ContentsType) par1, par2, *PQSIZE(3), par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QPixmap standardPixmap ( StandardPixmap sp, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_STANDARDPIXMAP )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * ptr = new QPixmap( obj->standardPixmap ( (QStyle::StandardPixmap) par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
virtual int styleHint ( StyleHint sh, const QStyleOption * opt = 0, const QWidget * widget = 0, QStyleHintReturn * hret = 0 ) const
*/
$virtualMethod=|int|styleHint|QStyle::StyleHint,const QStyleOption *=0,const QWidget *=0,QStyleHintReturn *=0

/*
virtual QRect subControlRect ( ComplexControl cc, const QStyleOptionComplex * opt, SubControl sc, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_SUBCONTROLRECT )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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

/*
virtual QRect subElementRect ( SubElement sr, const QStyleOption * opt, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCOMMONSTYLE_SUBELEMENTRECT )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->subElementRect ( (QStyle::SubElement) par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
virtual void unpolish ( QWidget * widget )
*/
HB_FUNC_STATIC( QCOMMONSTYLE_UNPOLISH1 )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unpolish ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unpolish ( QApplication * application )
*/
HB_FUNC_STATIC( QCOMMONSTYLE_UNPOLISH2 )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QApplication * par1 = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->unpolish ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void unpolish ( QWidget * widget )
//[2]virtual void unpolish ( QApplication * application )

HB_FUNC_STATIC( QCOMMONSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QCOMMONSTYLE_UNPOLISH1 );
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    HB_FUNC_EXEC( QCOMMONSTYLE_UNPOLISH2 );
  }
}

#pragma ENDDUMP
