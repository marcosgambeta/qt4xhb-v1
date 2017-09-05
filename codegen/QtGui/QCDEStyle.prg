$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPALETTE
#endif

CLASS QCDEStyle INHERIT QMotifStyle

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD drawControl
   METHOD drawPrimitive
   METHOD pixelMetric
   METHOD standardPalette

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QCDEStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QCDEStyle ( bool useHighlightCols = false )
*/
HB_FUNC_STATIC( QCDESTYLE_NEW )
{
  QCDEStyle * o = new QCDEStyle ( OPBOOL(1,false) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
virtual void drawControl ( ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCDESTYLE_DRAWCONTROL )
{
  QCDEStyle * obj = (QCDEStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QCDESTYLE_DRAWPRIMITIVE )
{
  QCDEStyle * obj = (QCDEStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual int pixelMetric ( PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCDESTYLE_PIXELMETRIC )
{
  QCDEStyle * obj = (QCDEStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->pixelMetric ( (QStyle::PixelMetric) par1, par2, par3 ) );
  }
}

/*
virtual QPalette standardPalette () const
*/
HB_FUNC_STATIC( QCDESTYLE_STANDARDPALETTE )
{
  QCDEStyle * obj = (QCDEStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->standardPalette () );
    _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}

#pragma ENDDUMP
