/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSIZE
REQUEST QPALETTE
#endif

CLASS QCleanlooksStyle INHERIT QWindowsStyle

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QCleanlooksStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QCleanlooksStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QCleanlooksStyle ()
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_NEW )
{
  QCleanlooksStyle * o = new QCleanlooksStyle ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DELETE )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void drawComplexControl ( ComplexControl control, const QStyleOptionComplex * option, QPainter * painter, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWCOMPLEXCONTROL )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->drawComplexControl ( (QStyle::ComplexControl) par1, par2, PQPAINTER(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawControl ( ControlElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWCONTROL )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->drawControl ( (QStyle::ControlElement) par1, par2, PQPAINTER(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawItemPixmap ( QPainter * painter, const QRect & rect, int alignment, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWITEMPIXMAP )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->drawItemPixmap ( PQPAINTER(1), *PQRECT(2), PINT(3), *PQPIXMAP(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawItemText ( QPainter * painter, const QRect & rectangle, int alignment, const QPalette & palette, bool enabled, const QString & text, QPalette::ColorRole textRole = QPalette::NoRole ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWITEMTEXT )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = hb_parni(3);
    QPalette * par4 = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par7 = ISNIL(7)? (int) QPalette::NoRole : hb_parni(7);
    obj->drawItemText ( PQPAINTER(1), *PQRECT(2), par3, *par4, PBOOL(5), PQSTRING(6), (QPalette::ColorRole) par7 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawPrimitive ( PrimitiveElement elem, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWPRIMITIVE )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_GENERATEDICONPIXMAP )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par3 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * ptr = new QPixmap( obj->generatedIconPixmap ( (QIcon::Mode) par1, *PQPIXMAP(2), par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
virtual SubControl hitTestComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, const QPoint & pt, const QWidget * w = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_HITTESTCOMPLEXCONTROL )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->hitTestComplexControl ( (QStyle::ComplexControl) par1, par2, *PQPOINT(3), par4 ) );
  }
}


/*
virtual QRect itemPixmapRect ( const QRect & r, int flags, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_ITEMPIXMAPRECT )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->itemPixmapRect ( *PQRECT(1), PINT(2), *PQPIXMAP(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual int pixelMetric ( PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_PIXELMETRIC )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->pixelMetric ( (QStyle::PixelMetric) par1, par2, par3 ) );
  }
}


/*
virtual void polish ( QWidget * widget )
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_POLISH1 )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->polish ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void polish ( QApplication * app )
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_POLISH2 )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QApplication * par1 = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->polish ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void polish ( QPalette & pal )
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_POLISH3 )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPalette * par1 = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->polish ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]virtual void polish ( QWidget * widget )
//[2]virtual void polish ( QApplication * app )
//[3]virtual void polish ( QPalette & pal )

HB_FUNC_STATIC( QCLEANLOOKSSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QCLEANLOOKSSTYLE_POLISH1 );
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    HB_FUNC_EXEC( QCLEANLOOKSSTYLE_POLISH2 );
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    HB_FUNC_EXEC( QCLEANLOOKSSTYLE_POLISH3 );
  }
}

/*
virtual QSize sizeFromContents ( ContentsType type, const QStyleOption * option, const QSize & size, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_SIZEFROMCONTENTS )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * ptr = new QSize( obj->sizeFromContents ( (QStyle::ContentsType) par1, par2, *PQSIZE(3), par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QPalette standardPalette () const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_STANDARDPALETTE )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->standardPalette () );
    _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}


/*
virtual QPixmap standardPixmap ( StandardPixmap standardPixmap, const QStyleOption * opt, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_STANDARDPIXMAP )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * ptr = new QPixmap( obj->standardPixmap ( (QStyle::StandardPixmap) par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
virtual int styleHint ( StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_STYLEHINT )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QStyleHintReturn * par4 = ISNIL(4)? 0 : (QStyleHintReturn *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->styleHint ( (QStyle::StyleHint) par1, par2, par3, par4 ) );
  }
}


/*
virtual QRect subControlRect ( ComplexControl control, const QStyleOptionComplex * option, SubControl subControl, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_SUBCONTROLRECT )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    const QWidget * par4 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->subControlRect ( (QStyle::ComplexControl) par1, par2, (QStyle::SubControl) par3, par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual QRect subElementRect ( SubElement sr, const QStyleOption * opt, const QWidget * w = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_SUBELEMENTRECT )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_UNPOLISH1 )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unpolish ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void unpolish ( QApplication * app )
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_UNPOLISH2 )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QApplication * par1 = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->unpolish ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]virtual void unpolish ( QWidget * widget )
//[2]virtual void unpolish ( QApplication * app )

HB_FUNC_STATIC( QCLEANLOOKSSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QCLEANLOOKSSTYLE_UNPOLISH1 );
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    HB_FUNC_EXEC( QCLEANLOOKSSTYLE_UNPOLISH2 );
  }
}



#pragma ENDDUMP
