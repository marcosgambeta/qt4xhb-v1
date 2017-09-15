$header

#include "hbclass.ch"

CLASS QSemaphore

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD acquire
   METHOD available
   METHOD release
   METHOD tryAcquire1
   METHOD tryAcquire2
   METHOD tryAcquire

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSemaphore>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSemaphore ( int n = 0 )
*/
$constructor=|new|int=0

$deleteMethod

/*
void acquire ( int n = 1 )
*/
$method=|void|acquire|int=1

/*
int available () const
*/
$method=|int|available|

/*
void release ( int n = 1 )
*/
$method=|void|release|int=1

/*
bool tryAcquire ( int n = 1 )
*/
$method=|bool|tryAcquire,tryAcquire1|int=1

/*
bool tryAcquire ( int n, int timeout )
*/
$method=|bool|tryAcquire,tryAcquire2|int,int

//[1]bool tryAcquire ( int n = 1 )
//[2]bool tryAcquire ( int n, int timeout )

HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSEMAPHORE_TRYACQUIRE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSEMAPHORE_TRYACQUIRE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSEMAPHORE_TRYACQUIRE2 );
  }
}

$extraMethods

#pragma ENDDUMP
