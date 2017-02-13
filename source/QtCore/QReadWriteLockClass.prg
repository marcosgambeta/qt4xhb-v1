/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QReadWriteLock

   DATA pointer
   DATA class_id INIT Class_Id_QReadWriteLock
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QReadWriteLock
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QReadWriteLock
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QReadWriteLock
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QReadWriteLock
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QReadWriteLock
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QReadWriteLock
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QReadWriteLock>

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
QReadWriteLock ()
*/
HB_FUNC( QREADWRITELOCK_NEW1 )
{
  QReadWriteLock * o = NULL;
  o = new QReadWriteLock (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QReadWriteLock *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QReadWriteLock ( RecursionMode recursionMode )
*/
HB_FUNC( QREADWRITELOCK_NEW2 )
{
  QReadWriteLock * o = NULL;
  int par1 = hb_parni(1);
  o = new QReadWriteLock (  (QReadWriteLock::RecursionMode) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QReadWriteLock *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QReadWriteLock ()
//[2]QReadWriteLock ( RecursionMode recursionMode )

HB_FUNC( QREADWRITELOCK_NEW )
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

HB_FUNC( QREADWRITELOCK_DELETE )
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
HB_FUNC( QREADWRITELOCK_LOCKFORREAD )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->lockForRead (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void lockForWrite ()
*/
HB_FUNC( QREADWRITELOCK_LOCKFORWRITE )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->lockForWrite (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool tryLockForRead ()
*/
HB_FUNC( QREADWRITELOCK_TRYLOCKFORREAD1 )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->tryLockForRead (  );
    hb_retl( b );
  }
}


/*
bool tryLockForRead ( int timeout )
*/
HB_FUNC( QREADWRITELOCK_TRYLOCKFORREAD2 )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->tryLockForRead ( par1 );
    hb_retl( b );
  }
}


//[1]bool tryLockForRead ()
//[2]bool tryLockForRead ( int timeout )

HB_FUNC( QREADWRITELOCK_TRYLOCKFORREAD )
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
HB_FUNC( QREADWRITELOCK_TRYLOCKFORWRITE1 )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->tryLockForWrite (  );
    hb_retl( b );
  }
}


/*
bool tryLockForWrite ( int timeout )
*/
HB_FUNC( QREADWRITELOCK_TRYLOCKFORWRITE2 )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->tryLockForWrite ( par1 );
    hb_retl( b );
  }
}


//[1]bool tryLockForWrite ()
//[2]bool tryLockForWrite ( int timeout )

HB_FUNC( QREADWRITELOCK_TRYLOCKFORWRITE )
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
HB_FUNC( QREADWRITELOCK_UNLOCK )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unlock (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
