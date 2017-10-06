$header

#include "hbclass.ch"

CLASS QFutureWatcherBase INHERIT QObject

   METHOD delete
   METHOD progressValue
   METHOD progressMinimum
   METHOD progressMaximum
   METHOD progressText
   METHOD isStarted
   METHOD isFinished
   METHOD isRunning
   METHOD isCanceled
   METHOD isPaused
   METHOD waitForFinished
   METHOD setPendingResultsLimit
   METHOD event
   METHOD cancel
   METHOD setPaused
   METHOD pause
   METHOD resume
   METHOD togglePaused

   METHOD onStarted
   METHOD onFinished
   METHOD onCanceled
   METHOD onPaused
   METHOD onResumed
   METHOD onResultReadyAt
   METHOD onResultsReadyAt
   METHOD onProgressRangeChanged
   METHOD onProgressValueChanged
   METHOD onProgressTextChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFutureWatcherBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
int progressValue() const
*/
$method=|int|progressValue|

/*
int progressMinimum() const
*/
$method=|int|progressMinimum|

/*
int progressMaximum() const
*/
$method=|int|progressMaximum|

/*
QString progressText() const
*/
$method=|QString|progressText|

/*
bool isStarted() const
*/
$method=|bool|isStarted|

/*
bool isFinished() const
*/
$method=|bool|isFinished|

/*
bool isRunning() const
*/
$method=|bool|isRunning|

/*
bool isCanceled() const
*/
$method=|bool|isCanceled|

/*
bool isPaused() const
*/
$method=|bool|isPaused|

/*
void waitForFinished()
*/
$method=|void|waitForFinished|

/*
void setPendingResultsLimit(int limit)
*/
$method=|void|setPendingResultsLimit|int

/*
bool event(QEvent *event)
*/
$method=|bool|event|QEvent *

/*
void cancel()
*/
$method=|void|cancel|

/*
void setPaused(bool paused)
*/
$method=|void|setPaused|bool

/*
void pause()
*/
$method=|void|pause|

/*
void resume()
*/
$method=|void|resume|

/*
void togglePaused()
*/
$method=|void|togglePaused|

#pragma ENDDUMP
