$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMUTEX
#endif

CLASS QFutureInterfaceBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD reportStarted
   METHOD reportFinished
   METHOD reportCanceled
   METHOD reportResultsReady
   METHOD setRunnable
   METHOD setFilterMode
   METHOD setProgressRange
   METHOD progressMinimum
   METHOD progressMaximum
   METHOD isProgressUpdateNeeded
   METHOD setProgressValue
   METHOD progressValue
   METHOD setProgressValueAndText
   METHOD progressText
   METHOD setExpectedResultCount
   METHOD expectedResultCount
   METHOD resultCount
   METHOD queryState
   METHOD isRunning
   METHOD isStarted
   METHOD isCanceled
   METHOD isFinished
   METHOD isPaused
   METHOD isThrottled
   METHOD isResultReadyAt
   METHOD cancel
   METHOD setPaused
   METHOD togglePaused
   METHOD setThrottled
   METHOD waitForFinished
   METHOD waitForNextResult
   METHOD waitForResult
   METHOD waitForResume
   METHOD mutex

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFutureInterfaceBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFutureInterfaceBase(State initialState = NoState)
*/
$constructor=|new1|QFutureInterfaceBase::State=QFutureInterfaceBase::NoState

/*
QFutureInterfaceBase(const QFutureInterfaceBase &other)
*/
$constructor=|new2|const QFutureInterfaceBase &

//[1]QFutureInterfaceBase(State initialState = NoState)
//[2]QFutureInterfaceBase(const QFutureInterfaceBase &other)

HB_FUNC_STATIC( QFUTUREINTERFACEBASE_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QFUTUREINTERFACEBASE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQFUTUREINTERFACEBASE(1) )
  {
    HB_FUNC_EXEC( QFUTUREINTERFACEBASE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void reportStarted()
*/
$method=|void|reportStarted|

/*
void reportFinished()
*/
$method=|void|reportFinished|

/*
void reportCanceled()
*/
$method=|void|reportCanceled|

/*
void reportResultsReady(int beginIndex, int endIndex)
*/
$method=|void|reportResultsReady|int,int

/*
void setRunnable(QRunnable *runnable)
*/
$method=|void|setRunnable|QRunnable *

/*
void setFilterMode(bool enable)
*/
$method=|void|setFilterMode|bool

/*
void setProgressRange(int minimum, int maximum)
*/
$method=|void|setProgressRange|int,int

/*
int progressMinimum() const
*/
$method=|int|progressMinimum|

/*
int progressMaximum() const
*/
$method=|int|progressMaximum|

/*
bool isProgressUpdateNeeded() const
*/
$method=|bool|isProgressUpdateNeeded|

/*
void setProgressValue(int progressValue)
*/
$method=|void|setProgressValue|int

/*
int progressValue() const
*/
$method=|int|progressValue|

/*
void setProgressValueAndText(int progressValue, const QString &progressText)
*/
$method=|void|setProgressValueAndText|int,const QString &

/*
QString progressText() const
*/
$method=|QString|progressText|

/*
void setExpectedResultCount(int resultCount)
*/
$method=|void|setExpectedResultCount|int

/*
int expectedResultCount()
*/
$method=|int|expectedResultCount|

/*
int resultCount() const
*/
$method=|int|resultCount|

/*
bool queryState(State state) const
*/
$method=|bool|queryState|QFutureInterfaceBase::State

/*
bool isRunning() const
*/
$method=|bool|isRunning|

/*
bool isStarted() const
*/
$method=|bool|isStarted|

/*
bool isCanceled() const
*/
$method=|bool|isCanceled|

/*
bool isFinished() const
*/
$method=|bool|isFinished|

/*
bool isPaused() const
*/
$method=|bool|isPaused|

/*
bool isThrottled() const
*/
$method=|bool|isThrottled|

/*
bool isResultReadyAt(int index) const
*/
$method=|bool|isResultReadyAt|int

/*
void cancel()
*/
$method=|void|cancel|

/*
void setPaused(bool paused)
*/
$method=|void|setPaused|bool

/*
void togglePaused()
*/
$method=|void|togglePaused|

/*
void setThrottled(bool enable)
*/
$method=|void|setThrottled|bool

/*
void waitForFinished()
*/
$method=|void|waitForFinished|

/*
bool waitForNextResult()
*/
$method=|bool|waitForNextResult|

/*
void waitForResult(int resultIndex)
*/
$method=|void|waitForResult|int

/*
void waitForResume()
*/
$method=|void|waitForResume|

/*
QMutex *mutex() const
*/
$method=|QMutex *|mutex|

$extraMethods

#pragma ENDDUMP
