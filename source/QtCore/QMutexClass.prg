/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QMutex

   DATA pointer
   DATA class_id INIT Class_Id_QMutex
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD lock
   METHOD tryLock1
   METHOD tryLock2
   METHOD tryLock
   METHOD unlock
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMutex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMutex>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMutex ( RecursionMode mode = NonRecursive )
*/
HB_FUNC_STATIC( QMUTEX_NEW )
{
  QMutex * o = NULL;
  o = new QMutex ( ISNIL(1)? QMutex::NonRecursive : (QMutex::RecursionMode) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


HB_FUNC_STATIC( QMUTEX_DELETE )
{
  QMutex * obj = (QMutex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void lock ()
*/
HB_FUNC_STATIC( QMUTEX_LOCK )
{
  QMutex * obj = (QMutex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->lock (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool tryLock ()
*/
HB_FUNC_STATIC( QMUTEX_TRYLOCK1 )
{
  QMutex * obj = (QMutex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->tryLock (  ) );
  }
}


/*
bool tryLock ( int timeout )
*/
HB_FUNC_STATIC( QMUTEX_TRYLOCK2 )
{
  QMutex * obj = (QMutex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->tryLock ( PINT(1) ) );
  }
}


//[1]bool tryLock ()
//[2]bool tryLock ( int timeout )

HB_FUNC_STATIC( QMUTEX_TRYLOCK )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMUTEX_TRYLOCK1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMUTEX_TRYLOCK2 );
  }
}

/*
void unlock ()
*/
HB_FUNC_STATIC( QMUTEX_UNLOCK )
{
  QMutex * obj = (QMutex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unlock (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QMUTEX_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QMUTEX_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMUTEX_NEWFROM );
}

HB_FUNC_STATIC( QMUTEX_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMUTEX_NEWFROM );
}

HB_FUNC_STATIC( QMUTEX_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMUTEX_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
