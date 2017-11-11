$header

#include "hbclass.ch"

CLASS QReadWriteLock

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD lockForRead
   METHOD lockForWrite
   METHOD tryLockForRead
   METHOD tryLockForWrite
   METHOD unlock

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QReadWriteLock>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QReadWriteLock ()
*/
$internalConstructor=|new1|

/*
QReadWriteLock ( RecursionMode recursionMode )
*/
$internalConstructor=|new2|QReadWriteLock::RecursionMode

//[1]QReadWriteLock ()
//[2]QReadWriteLock ( RecursionMode recursionMode )

HB_FUNC_STATIC( QREADWRITELOCK_NEW )
{
  if( ISNUMPAR(0) )
  {
    QReadWriteLock_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QReadWriteLock_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void lockForRead ()
*/
$method=|void|lockForRead|

/*
void lockForWrite ()
*/
$method=|void|lockForWrite|

/*
bool tryLockForRead ()
*/
$internalMethod=|bool|tryLockForRead,tryLockForRead1|

/*
bool tryLockForRead ( int timeout )
*/
$internalMethod=|bool|tryLockForRead,tryLockForRead2|int

//[1]bool tryLockForRead ()
//[2]bool tryLockForRead ( int timeout )

HB_FUNC_STATIC( QREADWRITELOCK_TRYLOCKFORREAD )
{
  if( ISNUMPAR(0) )
  {
    QReadWriteLock_tryLockForRead1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QReadWriteLock_tryLockForRead2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool tryLockForWrite ()
*/
$internalMethod=|bool|tryLockForWrite,tryLockForWrite1|

/*
bool tryLockForWrite ( int timeout )
*/
$internalMethod=|bool|tryLockForWrite,tryLockForWrite2|int

//[1]bool tryLockForWrite ()
//[2]bool tryLockForWrite ( int timeout )

HB_FUNC_STATIC( QREADWRITELOCK_TRYLOCKFORWRITE )
{
  if( ISNUMPAR(0) )
  {
    QReadWriteLock_tryLockForWrite1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QReadWriteLock_tryLockForWrite2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void unlock ()
*/
$method=|void|unlock|

$extraMethods

#pragma ENDDUMP
