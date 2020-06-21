%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QThreadPool ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=int activeThreadCount() const

$prototypeV2=int expiryTimeout() const

$prototypeV2=int maxThreadCount() const

$prototypeV2=void releaseThread()

$prototypeV2=void reserveThread()

$prototypeV2=void setExpiryTimeout( int expiryTimeout )

$prototypeV2=void setMaxThreadCount( int maxThreadCount )

$prototype=void start ( QRunnable * runnable, int priority = 0 )
$method=|void|start|QRunnable *,int=0

$prototypeV2=bool tryStart( QRunnable * runnable )

$prototype=void waitForDone ()
$internalMethod=|void|waitForDone,waitForDone1|

$prototype=bool waitForDone ( int msecs )
$internalMethod=|bool|waitForDone,waitForDone2|int

/*
[1]void waitForDone ()
[2]bool waitForDone ( int msecs )
*/

HB_FUNC_STATIC( QTHREADPOOL_WAITFORDONE )
{
  if( ISNUMPAR(0) )
  {
    QThreadPool_waitForDone1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QThreadPool_waitForDone2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=waitForDone

$prototypeV2=static QThreadPool * globalInstance()

#pragma ENDDUMP
