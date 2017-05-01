/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QPALETTE
REQUEST QPIXMAP
REQUEST QRECT
#endif

CLASS QMotifStyle INHERIT QCommonStyle

   DATA class_id INIT Class_Id_QMotifStyle
   DATA self_destruction INIT .F.

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

#include <QMotifStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QMotifStyle ( bool useHighlightCols = false )
*/
HB_FUNC_STATIC( QMOTIFSTYLE_NEW )
{
  QMotifStyle * o = NULL;
  o = new QMotifStyle ( ISNIL(1)? false : hb_parl(1) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMotifStyle *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    obj->setUseHighlightColors ( PBOOL(1) );
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
    hb_retl( obj->useHighlightColors (  ) );
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
HB_FUNC_STATIC( QMOTIFSTYLE_DRAWCONTROL )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * w = 0 ) const
*/
HB_FUNC_STATIC( QMOTIFSTYLE_DRAWPRIMITIVE )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool event ( QEvent * e )
*/
HB_FUNC_STATIC( QMOTIFSTYLE_EVENT )
{
  QMotifStyle * obj = (QMotifStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QEvent * par1 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->event ( par1 ) );
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
    int par1 = hb_parni(1);
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->pixelMetric (  (QStyle::PixelMetric) par1, par2, par3 ) );
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
    QPalette * par1 = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->polish ( *par1 );
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
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * par3 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * ptr = new QSize( obj->sizeFromContents (  (QStyle::ContentsType) par1, par2, *par3, par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
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
    QPalette * ptr = new QPalette( obj->standardPalette (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
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
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * ptr = new QPixmap( obj->standardPixmap (  (QStyle::StandardPixmap) par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
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
    int par1 = hb_parni(1);
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QStyleHintReturn * par4 = ISNIL(4)? 0 : (QStyleHintReturn *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->styleHint (  (QStyle::StyleHint) par1, par2, par3, par4 ) );
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
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->subControlRect (  (QStyle::ComplexControl) par1, par2,  (QStyle::SubControl) par3, par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
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
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->subElementRect (  (QStyle::SubElement) par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}




#pragma ENDDUMP
