/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QWindowStateChangeEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QWindowStateChangeEvent
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD oldState
   METHOD isOverride
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWindowStateChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWindowStateChangeEvent>

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
QWindowStateChangeEvent(Qt::WindowStates aOldState)
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_NEW1 )
{
  QWindowStateChangeEvent * o = NULL;
  int par1 = hb_parni(1);
  o = new QWindowStateChangeEvent (  (Qt::WindowStates) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWindowStateChangeEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride)
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_NEW2 )
{
  QWindowStateChangeEvent * o = NULL;
  int par1 = hb_parni(1);
  bool par2 = hb_parl(2);
  o = new QWindowStateChangeEvent (  (Qt::WindowStates) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWindowStateChangeEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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

HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_DELETE )
{
  QWindowStateChangeEvent * obj = (QWindowStateChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::WindowStates oldState() const
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_OLDSTATE )
{
  QWindowStateChangeEvent * obj = (QWindowStateChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->oldState (  ) );
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
    hb_retl( obj->isOverride (  ) );
  }
}




#pragma ENDDUMP
