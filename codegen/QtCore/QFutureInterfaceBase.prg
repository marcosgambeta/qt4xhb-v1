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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFutureInterfaceBase(State initialState = NoState)
$internalConstructor=|new1|QFutureInterfaceBase::State=QFutureInterfaceBase::NoState

$prototype=QFutureInterfaceBase(const QFutureInterfaceBase &other)
$internalConstructor=|new2|const QFutureInterfaceBase &

/*
[1]QFutureInterfaceBase(State initialState = NoState)
[2]QFutureInterfaceBase(const QFutureInterfaceBase &other)
*/

HB_FUNC_STATIC( QFUTUREINTERFACEBASE_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QFutureInterfaceBase_new1();
  }
  else if( ISNUMPAR(1) && ISQFUTUREINTERFACEBASE(1) )
  {
    QFutureInterfaceBase_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=void reportStarted()

$prototypeV2=void reportFinished()

$prototypeV2=void reportCanceled()

$prototype=void reportResultsReady(int beginIndex, int endIndex)
$method=|void|reportResultsReady|int,int

$prototypeV2=void setRunnable( QRunnable * runnable )

$prototypeV2=void setFilterMode( bool enable )

$prototype=void setProgressRange(int minimum, int maximum)
$method=|void|setProgressRange|int,int

$prototypeV2=int progressMinimum() const

$prototypeV2=int progressMaximum() const

$prototypeV2=bool isProgressUpdateNeeded() const

$prototypeV2=void setProgressValue( int progressValue )

$prototypeV2=int progressValue() const

$prototype=void setProgressValueAndText(int progressValue, const QString &progressText)
$method=|void|setProgressValueAndText|int,const QString &

$prototypeV2=QString progressText() const

$prototypeV2=void setExpectedResultCount( int resultCount )

$prototypeV2=int expectedResultCount()

$prototypeV2=int resultCount() const

$prototypeV2=bool queryState( QFutureInterfaceBase::State state ) const

$prototypeV2=bool isRunning() const

$prototypeV2=bool isStarted() const

$prototypeV2=bool isCanceled() const

$prototypeV2=bool isFinished() const

$prototypeV2=bool isPaused() const

$prototypeV2=bool isThrottled() const

$prototypeV2=bool isResultReadyAt( int index ) const

$prototypeV2=void cancel()

$prototypeV2=void setPaused( bool paused )

$prototypeV2=void togglePaused()

$prototypeV2=void setThrottled( bool enable )

$prototypeV2=void waitForFinished()

$prototypeV2=bool waitForNextResult()

$prototypeV2=void waitForResult( int resultIndex )

$prototypeV2=void waitForResume()

$prototypeV2=QMutex * mutex() const

$extraMethods

#pragma ENDDUMP
