%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QMutex

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD lock
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

$includes

$prototype=QMutex ( RecursionMode mode = NonRecursive )
$constructor=|new|QMutex::RecursionMode=QMutex::NonRecursive

$deleteMethod

$prototype=void lock ()
$method=|void|lock|

$prototype=bool tryLock ()
$internalMethod=|bool|tryLock,tryLock1|

$prototype=bool tryLock ( int timeout )
$internalMethod=|bool|tryLock,tryLock2|int

//[1]bool tryLock ()
//[2]bool tryLock ( int timeout )

HB_FUNC_STATIC( QMUTEX_TRYLOCK )
{
  if( ISNUMPAR(0) )
  {
    QMutex_tryLock1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMutex_tryLock2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void unlock ()
$method=|void|unlock|

$extraMethods

#pragma ENDDUMP
