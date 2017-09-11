$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTSTATE
#endif

CLASS QHistoryState INHERIT QAbstractState

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD defaultState
   METHOD setDefaultState
   METHOD historyType
   METHOD setHistoryType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHistoryState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QHistoryState(QState *parent = 0)
*/
HB_FUNC_STATIC( QHISTORYSTATE_NEW1 )
{
  QHistoryState * o = new QHistoryState ( OPQSTATE(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QHistoryState(HistoryType type, QState *parent = 0)
*/
HB_FUNC_STATIC( QHISTORYSTATE_NEW2 )
{
  QHistoryState * o = new QHistoryState ( (QHistoryState::HistoryType) hb_parni(1), OPQSTATE(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QHistoryState(QState *parent = 0)
//[2]QHistoryState(HistoryType type, QState *parent = 0)

HB_FUNC_STATIC( QHISTORYSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QHISTORYSTATE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSTATE(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QHISTORYSTATE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QAbstractState *defaultState() const
*/
HB_FUNC_STATIC( QHISTORYSTATE_DEFAULTSTATE )
{
  QHistoryState * obj = (QHistoryState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractState * ptr = obj->defaultState ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTSTATE" );
  }
}


/*
void setDefaultState(QAbstractState *state)
*/
HB_FUNC_STATIC( QHISTORYSTATE_SETDEFAULTSTATE )
{
  QHistoryState * obj = (QHistoryState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractState * par1 = (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDefaultState ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
HistoryType historyType() const
*/
HB_FUNC_STATIC( QHISTORYSTATE_HISTORYTYPE )
{
  QHistoryState * obj = (QHistoryState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->historyType () );
  }
}


/*
void setHistoryType(HistoryType type)
*/
HB_FUNC_STATIC( QHISTORYSTATE_SETHISTORYTYPE )
{
  QHistoryState * obj = (QHistoryState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHistoryType ( (QHistoryState::HistoryType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
