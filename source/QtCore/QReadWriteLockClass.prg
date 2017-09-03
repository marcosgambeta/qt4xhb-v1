/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QReadWriteLock

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD lockForRead
   METHOD lockForWrite
   METHOD tryLockForRead1
   METHOD tryLockForRead2
   METHOD tryLockForRead
   METHOD tryLockForWrite1
   METHOD tryLockForWrite2
   METHOD tryLockForWrite
   METHOD unlock
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QReadWriteLock
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QReadWriteLock>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QReadWriteLock ()
*/
HB_FUNC_STATIC( QREADWRITELOCK_NEW1 )
{
  QReadWriteLock * o = new QReadWriteLock ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QReadWriteLock ( RecursionMode recursionMode )
*/
HB_FUNC_STATIC( QREADWRITELOCK_NEW2 )
{
  QReadWriteLock * o = new QReadWriteLock ( (QReadWriteLock::RecursionMode) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QReadWriteLock ()
//[2]QReadWriteLock ( RecursionMode recursionMode )

HB_FUNC_STATIC( QREADWRITELOCK_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QREADWRITELOCK_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QREADWRITELOCK_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREADWRITELOCK_DELETE )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void lockForRead ()
*/
HB_FUNC_STATIC( QREADWRITELOCK_LOCKFORREAD )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->lockForRead ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void lockForWrite ()
*/
HB_FUNC_STATIC( QREADWRITELOCK_LOCKFORWRITE )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->lockForWrite ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool tryLockForRead ()
*/
HB_FUNC_STATIC( QREADWRITELOCK_TRYLOCKFORREAD1 )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->tryLockForRead () );
  }
}

/*
bool tryLockForRead ( int timeout )
*/
HB_FUNC_STATIC( QREADWRITELOCK_TRYLOCKFORREAD2 )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->tryLockForRead ( PINT(1) ) );
  }
}

//[1]bool tryLockForRead ()
//[2]bool tryLockForRead ( int timeout )

HB_FUNC_STATIC( QREADWRITELOCK_TRYLOCKFORREAD )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QREADWRITELOCK_TRYLOCKFORREAD1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QREADWRITELOCK_TRYLOCKFORREAD2 );
  }
}

/*
bool tryLockForWrite ()
*/
HB_FUNC_STATIC( QREADWRITELOCK_TRYLOCKFORWRITE1 )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->tryLockForWrite () );
  }
}

/*
bool tryLockForWrite ( int timeout )
*/
HB_FUNC_STATIC( QREADWRITELOCK_TRYLOCKFORWRITE2 )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->tryLockForWrite ( PINT(1) ) );
  }
}

//[1]bool tryLockForWrite ()
//[2]bool tryLockForWrite ( int timeout )

HB_FUNC_STATIC( QREADWRITELOCK_TRYLOCKFORWRITE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QREADWRITELOCK_TRYLOCKFORWRITE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QREADWRITELOCK_TRYLOCKFORWRITE2 );
  }
}

/*
void unlock ()
*/
HB_FUNC_STATIC( QREADWRITELOCK_UNLOCK )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unlock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QREADWRITELOCK_NEWFROM )
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

HB_FUNC_STATIC( QREADWRITELOCK_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREADWRITELOCK_NEWFROM );
}

HB_FUNC_STATIC( QREADWRITELOCK_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREADWRITELOCK_NEWFROM );
}

HB_FUNC_STATIC( QREADWRITELOCK_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QREADWRITELOCK_SETSELFDESTRUCTION )
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
