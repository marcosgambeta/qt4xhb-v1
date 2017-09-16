$header

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

$destructor

#pragma BEGINDUMP

#include <QReadWriteLock>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QReadWriteLock ()
*/
$constructor=|new1|

/*
QReadWriteLock ( RecursionMode recursionMode )
*/
$constructor=|new2|QReadWriteLock::RecursionMode

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
$method=|bool|tryLockForRead,tryLockForRead1|

/*
bool tryLockForRead ( int timeout )
*/
$method=|bool|tryLockForRead,tryLockForRead2|int

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool tryLockForWrite ()
*/
$method=|bool|tryLockForWrite,tryLockForWrite1|

/*
bool tryLockForWrite ( int timeout )
*/
$method=|bool|tryLockForWrite,tryLockForWrite2|int

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
