/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QToolBarChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD toggle

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QToolBarChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QToolBarChangeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QToolBarChangeEvent(bool t)
*/
HB_FUNC_STATIC( QTOOLBARCHANGEEVENT_NEW )
{
  QToolBarChangeEvent * o = new QToolBarChangeEvent ( PBOOL(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QTOOLBARCHANGEEVENT_DELETE )
{
  QToolBarChangeEvent * obj = (QToolBarChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool toggle() const
*/
HB_FUNC_STATIC( QTOOLBARCHANGEEVENT_TOGGLE )
{
  QToolBarChangeEvent * obj = (QToolBarChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->toggle () );
  }
}

#pragma ENDDUMP
