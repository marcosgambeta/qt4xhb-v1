$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREGION
#endif

CLASS QDecorationDefault INHERIT QDecoration

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD paint
   METHOD region

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDecorationDefault>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDecorationDefault ()
*/
HB_FUNC_STATIC( QDECORATIONDEFAULT_NEW )
{
  QDecorationDefault * o = new QDecorationDefault ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
virtual bool paint ( QPainter * painter, const QWidget * widget, int decorationRegion = All, DecorationState state = Normal )
*/
HB_FUNC_STATIC( QDECORATIONDEFAULT_PAINT )
{
  QDecorationDefault * obj = (QDecorationDefault *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QWidget * par2 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? (int) QDecoration::Normal : hb_parni(4);
    RBOOL( obj->paint ( PQPAINTER(1), par2, OPINT(3,QDecoration::All), (QDecoration::DecorationState) par4 ) );
  }
}

/*
virtual QRegion region ( const QWidget * widget, const QRect & rect, int decorationRegion = All )
*/
HB_FUNC_STATIC( QDECORATIONDEFAULT_REGION )
{
  QDecorationDefault * obj = (QDecorationDefault *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QWidget * par1 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRegion * ptr = new QRegion( obj->region ( par1, *PQRECT(2), OPINT(3,QDecoration::All) ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

#pragma ENDDUMP
