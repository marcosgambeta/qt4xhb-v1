$header

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

$destructor

#pragma BEGINDUMP

#include <QAbstractState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

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
