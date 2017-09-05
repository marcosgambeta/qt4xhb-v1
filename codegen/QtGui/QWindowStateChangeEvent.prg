$header

#include "hbclass.ch"

CLASS QWindowStateChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD oldState
   METHOD isOverride

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWindowStateChangeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWindowStateChangeEvent(Qt::WindowStates aOldState)
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_NEW1 )
{
  int par1 = hb_parni(1);
  QWindowStateChangeEvent * o = new QWindowStateChangeEvent ( (Qt::WindowStates) par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride)
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_NEW2 )
{
  int par1 = hb_parni(1);
  QWindowStateChangeEvent * o = new QWindowStateChangeEvent ( (Qt::WindowStates) par1, PBOOL(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QWindowStateChangeEvent(Qt::WindowStates aOldState)
//[2]QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride)

HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QWINDOWSTATECHANGEEVENT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QWINDOWSTATECHANGEEVENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::WindowStates oldState() const
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_OLDSTATE )
{
  QWindowStateChangeEvent * obj = (QWindowStateChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->oldState () );
  }
}

/*
bool isOverride() const
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_ISOVERRIDE )
{
  QWindowStateChangeEvent * obj = (QWindowStateChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isOverride () );
  }
}

#pragma ENDDUMP
