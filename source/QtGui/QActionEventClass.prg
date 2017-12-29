/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD action
   METHOD before

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QActionEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QActionEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QActionEvent ( int type, QAction * action, QAction * before = 0 )
*/
HB_FUNC_STATIC( QACTIONEVENT_NEW )
{
  QAction * par3 = ISNIL(3)? 0 : (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QActionEvent * o = new QActionEvent ( PINT(1), PQACTION(2), par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QACTIONEVENT_DELETE )
{
  QActionEvent * obj = (QActionEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QAction * action () const
*/
HB_FUNC_STATIC( QACTIONEVENT_ACTION )
{
  QActionEvent * obj = (QActionEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->action ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * before () const
*/
HB_FUNC_STATIC( QACTIONEVENT_BEFORE )
{
  QActionEvent * obj = (QActionEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->before ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

#pragma ENDDUMP
