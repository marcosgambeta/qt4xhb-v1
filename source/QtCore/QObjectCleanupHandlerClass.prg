/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QOBJECT

CLASS QObjectCleanupHandler INHERIT QObject

   DATA class_id INIT Class_Id_QObjectCleanupHandler
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD add
   METHOD remove
   METHOD isEmpty
   METHOD clear
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QObjectCleanupHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QObjectCleanupHandler>

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
QObjectCleanupHandler()
*/
HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_NEW )
{
  QObjectCleanupHandler * o = NULL;
  o = new QObjectCleanupHandler (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QObjectCleanupHandler *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_DELETE )
{
  QObjectCleanupHandler * obj = (QObjectCleanupHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QObject* add(QObject* object)
*/
HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_ADD )
{
  QObjectCleanupHandler * obj = (QObjectCleanupHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QObject * ptr = obj->add ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
void remove(QObject *object)
*/
HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_REMOVE )
{
  QObjectCleanupHandler * obj = (QObjectCleanupHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->remove ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_ISEMPTY )
{
  QObjectCleanupHandler * obj = (QObjectCleanupHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
void clear()
*/
HB_FUNC_STATIC( QOBJECTCLEANUPHANDLER_CLEAR )
{
  QObjectCleanupHandler * obj = (QObjectCleanupHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
