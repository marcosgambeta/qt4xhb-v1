/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSTATEMACHINE
REQUEST QSTATE
#endif

CLASS QAbstractState INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD machine
   METHOD parentState
   METHOD onEntered
   METHOD onExited
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractState
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QABSTRACTSTATE_DELETE )
{
  QAbstractState * obj = (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QStateMachine * machine () const
*/
HB_FUNC_STATIC( QABSTRACTSTATE_MACHINE )
{
  QAbstractState * obj = (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStateMachine * ptr = obj->machine ();
    _qt4xhb_createReturnClass ( ptr, "QSTATEMACHINE" );
  }
}

/*
QState * parentState () const
*/
HB_FUNC_STATIC( QABSTRACTSTATE_PARENTSTATE )
{
  QAbstractState * obj = (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QState * ptr = obj->parentState ();
    _qt4xhb_createReturnClass ( ptr, "QSTATE" );
  }
}

#pragma ENDDUMP
