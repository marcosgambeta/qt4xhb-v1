/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPIXMAP
REQUEST QSIZE
REQUEST QRECT

CLASS QCommonStyle INHERIT QStyle

   DATA class_id INIT Class_Id_QCommonStyle
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QCommonStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QCommonStyle>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QCommonStyle ()
*/
HB_FUNC( QCOMMONSTYLE_NEW )
{
  QCommonStyle * o = NULL;
  o = new QCommonStyle (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCommonStyle *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QCOMMONSTYLE_DELETE )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void drawComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC( QCOMMONSTYLE_DRAWCOMPLEXCONTROL )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPainter * par3 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->drawComplexControl (  (QStyle::ComplexControl) par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawControl ( ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC( QCOMMONSTYLE_DRAWCONTROL )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPainter * par3 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->drawControl (  (QStyle::ControlElement) par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC( QCOMMONSTYLE_DRAWPRIMITIVE )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPainter * par3 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->drawPrimitive (  (QStyle::PrimitiveElement) par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QPixmap generatedIconPixmap ( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * opt ) const
*/
HB_FUNC( QCOMMONSTYLE_GENERATEDICONPIXMAP )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * par2 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QStyleOption * par3 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * ptr = new QPixmap( obj->generatedIconPixmap (  (QIcon::Mode) par1, *par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );  }
}


/*
virtual SubControl hitTestComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, const QPoint & pt, const QWidget * widget = 0 ) const
*/
HB_FUNC( QCOMMONSTYLE_HITTESTCOMPLEXCONTROL )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPoint * par3 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->hitTestComplexControl (  (QStyle::ComplexControl) par1, par2, *par3, par4 );
    hb_retni( i );
  }
}


/*
virtual int pixelMetric ( PixelMetric m, const QStyleOption * opt = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC( QCOMMONSTYLE_PIXELMETRIC )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->pixelMetric (  (QStyle::PixelMetric) par1, par2, par3 );
    hb_retni( i );
  }
}


/*
virtual void polish ( QPalette & pal )
*/
HB_FUNC( QCOMMONSTYLE_POLISH1 )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPalette * par1 = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->polish ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void polish ( QApplication * app )
*/
HB_FUNC( QCOMMONSTYLE_POLISH2 )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QApplication * par1 = (QApplication *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->polish ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void polish ( QWidget * widget )
*/
HB_FUNC( QCOMMONSTYLE_POLISH3 )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->polish ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]virtual void polish ( QPalette & pal )
//[2]virtual void polish ( QApplication * app )
//[3]virtual void polish ( QWidget * widget )

HB_FUNC( QCOMMONSTYLE_POLISH )
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
HB_FUNC( QCOMMONSTYLE_SIZEFROMCONTENTS )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * par3 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * ptr = new QSize( obj->sizeFromContents (  (QStyle::ContentsType) par1, par2, *par3, par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
virtual QPixmap standardPixmap ( StandardPixmap sp, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC( QCOMMONSTYLE_STANDARDPIXMAP )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * ptr = new QPixmap( obj->standardPixmap (  (QStyle::StandardPixmap) par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );  }
}


/*
virtual int styleHint ( StyleHint sh, const QStyleOption * opt = 0, const QWidget * widget = 0, QStyleHintReturn * hret = 0 ) const
*/
HB_FUNC( QCOMMONSTYLE_STYLEHINT )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QStyleHintReturn * par4 = ISNIL(4)? 0 : (QStyleHintReturn *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->styleHint (  (QStyle::StyleHint) par1, par2, par3, par4 );
    hb_retni( i );
  }
}


/*
virtual QRect subControlRect ( ComplexControl cc, const QStyleOptionComplex * opt, SubControl sc, const QWidget * widget = 0 ) const
*/
HB_FUNC( QCOMMONSTYLE_SUBCONTROLRECT )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->subControlRect (  (QStyle::ComplexControl) par1, par2,  (QStyle::SubControl) par3, par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );  }
}


/*
virtual QRect subElementRect ( SubElement sr, const QStyleOption * opt, const QWidget * widget = 0 ) const
*/
HB_FUNC( QCOMMONSTYLE_SUBELEMENTRECT )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->subElementRect (  (QStyle::SubElement) par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );  }
}


/*
virtual void unpolish ( QWidget * widget )
*/
HB_FUNC( QCOMMONSTYLE_UNPOLISH1 )
{
  QCommonStyle * obj = (QCommonStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->unpolish ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void unpolish ( QApplication * application )
*/
HB_FUNC( QCOMMONSTYLE_UNPOLISH2 )
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

HB_FUNC( QCOMMONSTYLE_UNPOLISH )
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
