$header

#include "hbclass.ch"

CLASS QMutex

   DATA pointer
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

$destructor

#pragma BEGINDUMP

#include <QMutex>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMutex ( RecursionMode mode = NonRecursive )
*/
$constructor=|new|QMutex::RecursionMode=QMutex::NonRecursive

$deleteMethod

/*
void lock ()
*/
$method=|void|lock|

/*
bool tryLock ()
*/
$method=|bool|tryLock,tryLock1|

/*
bool tryLock ( int timeout )
*/
$method=|bool|tryLock,tryLock2|int

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
