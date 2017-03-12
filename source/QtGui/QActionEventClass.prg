/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QActionEvent
   DATA self_destruction INIT .f.

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
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QActionEvent ( int type, QAction * action, QAction * before = 0 )
*/
HB_FUNC_STATIC( QACTIONEVENT_NEW )
{
  QActionEvent * o = NULL;
  int par1 = hb_parni(1);
  QAction * par2 = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QAction * par3 = ISNIL(3)? 0 : (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QActionEvent ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QActionEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    QAction * ptr = obj->action (  );
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
    QAction * ptr = obj->before (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}




#pragma ENDDUMP
