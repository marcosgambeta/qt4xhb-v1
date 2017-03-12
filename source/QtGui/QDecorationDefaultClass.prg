/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREGION
#endif

CLASS QDecorationDefault INHERIT QDecoration

   DATA class_id INIT Class_Id_QDecorationDefault
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD paint
   METHOD region
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDecorationDefault
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDecorationDefault>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QDecorationDefault ()
*/
HB_FUNC_STATIC( QDECORATIONDEFAULT_NEW )
{
  QDecorationDefault * o = NULL;
  o = new QDecorationDefault (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDecorationDefault *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QDECORATIONDEFAULT_DELETE )
{
  QDecorationDefault * obj = (QDecorationDefault *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool paint ( QPainter * painter, const QWidget * widget, int decorationRegion = All, DecorationState state = Normal )
*/
HB_FUNC_STATIC( QDECORATIONDEFAULT_PAINT )
{
  QDecorationDefault * obj = (QDecorationDefault *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par2 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? QDecoration::All : hb_parni(3);
    int par4 = ISNIL(4)? (int) QDecoration::Normal : hb_parni(4);
    hb_retl( obj->paint ( par1, par2, par3,  (QDecoration::DecorationState) par4 ) );
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
    QRect * par2 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? QDecoration::All : hb_parni(3);
    QRegion * ptr = new QRegion( obj->region ( par1, *par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}




#pragma ENDDUMP
