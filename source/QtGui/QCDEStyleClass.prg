/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPALETTE

CLASS QCDEStyle INHERIT QMotifStyle

   DATA class_id INIT Class_Id_QCDEStyle
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD drawControl
   METHOD drawPrimitive
   METHOD pixelMetric
   METHOD standardPalette
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCDEStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QCDEStyle>

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
QCDEStyle ( bool useHighlightCols = false )
*/
HB_FUNC_STATIC( QCDESTYLE_NEW )
{
  QCDEStyle * o = NULL;
  bool par1 = ISNIL(1)? false : hb_parl(1);
  o = new QCDEStyle ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCDEStyle *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QCDESTYLE_DELETE )
{
  QCDEStyle * obj = (QCDEStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void drawControl ( ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCDESTYLE_DRAWCONTROL )
{
  QCDEStyle * obj = (QCDEStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QCDESTYLE_DRAWPRIMITIVE )
{
  QCDEStyle * obj = (QCDEStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
    hb_retni( obj->pixelMetric (  (QStyle::PixelMetric) par1, par2, par3 ) );
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
    QPalette * ptr = new QPalette( obj->standardPalette (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}




#pragma ENDDUMP
