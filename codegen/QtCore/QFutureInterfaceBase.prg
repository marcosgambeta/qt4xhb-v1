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

$prototype=void reportStarted()
$method=|void|reportStarted|

$prototype=void reportFinished()
$method=|void|reportFinished|

$prototype=void reportCanceled()
$method=|void|reportCanceled|

$prototype=void reportResultsReady(int beginIndex, int endIndex)
$method=|void|reportResultsReady|int,int

$prototype=void setRunnable(QRunnable *runnable)
$method=|void|setRunnable|QRunnable *

$prototype=void setFilterMode(bool enable)
$method=|void|setFilterMode|bool

$prototype=void setProgressRange(int minimum, int maximum)
$method=|void|setProgressRange|int,int

$prototypeV2=int progressMinimum() const

$prototypeV2=int progressMaximum() const

$prototypeV2=bool isProgressUpdateNeeded() const

$prototype=void setProgressValue(int progressValue)
$method=|void|setProgressValue|int

$prototypeV2=int progressValue() const

$prototype=void setProgressValueAndText(int progressValue, const QString &progressText)
$method=|void|setProgressValueAndText|int,const QString &

$prototype=QString progressText() const
$method=|QString|progressText|

$prototype=void setExpectedResultCount(int resultCount)
$method=|void|setExpectedResultCount|int

$prototypeV2=int expectedResultCount()

$prototypeV2=int resultCount() const

$prototype=bool queryState(State state) const
$method=|bool|queryState|QFutureInterfaceBase::State

$prototypeV2=bool isRunning() const

$prototypeV2=bool isStarted() const

$prototypeV2=bool isCanceled() const

$prototypeV2=bool isFinished() const

$prototypeV2=bool isPaused() const

$prototypeV2=bool isThrottled() const

$prototype=bool isResultReadyAt(int index) const
$method=|bool|isResultReadyAt|int

$prototype=void cancel()
$method=|void|cancel|

$prototype=void setPaused(bool paused)
$method=|void|setPaused|bool

$prototype=void togglePaused()
$method=|void|togglePaused|

$prototype=void setThrottled(bool enable)
$method=|void|setThrottled|bool

$prototype=void waitForFinished()
$method=|void|waitForFinished|

$prototypeV2=bool waitForNextResult()

$prototype=void waitForResult(int resultIndex)
$method=|void|waitForResult|int

$prototype=void waitForResume()
$method=|void|waitForResume|

$prototype=QMutex *mutex() const
$method=|QMutex *|mutex|

$extraMethods

#pragma ENDDUMP
