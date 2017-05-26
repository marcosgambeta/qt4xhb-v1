/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QFocusFrame INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD setWidget
   METHOD widget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFocusFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFocusFrame>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFocusFrame ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFOCUSFRAME_NEW )
{
  QFocusFrame * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFocusFrame ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}



/*
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QFOCUSFRAME_SETWIDGET )
{
  QFocusFrame * obj = (QFocusFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QFOCUSFRAME_WIDGET )
{
  QFocusFrame * obj = (QFocusFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}




#pragma ENDDUMP
