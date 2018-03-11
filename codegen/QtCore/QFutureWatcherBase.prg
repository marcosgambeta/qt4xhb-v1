%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$includes

$deleteMethod

$prototype=int progressValue() const
$method=|int|progressValue|

$prototype=int progressMinimum() const
$method=|int|progressMinimum|

$prototype=int progressMaximum() const
$method=|int|progressMaximum|

$prototype=QString progressText() const
$method=|QString|progressText|

$prototype=bool isStarted() const
$method=|bool|isStarted|

$prototype=bool isFinished() const
$method=|bool|isFinished|

$prototype=bool isRunning() const
$method=|bool|isRunning|

$prototype=bool isCanceled() const
$method=|bool|isCanceled|

$prototype=bool isPaused() const
$method=|bool|isPaused|

$prototype=void waitForFinished()
$method=|void|waitForFinished|

$prototype=void setPendingResultsLimit(int limit)
$method=|void|setPendingResultsLimit|int

$prototype=bool event(QEvent *event)
$method=|bool|event|QEvent *

$prototype=void cancel()
$method=|void|cancel|

$prototype=void setPaused(bool paused)
$method=|void|setPaused|bool

$prototype=void pause()
$method=|void|pause|

$prototype=void resume()
$method=|void|resume|

$prototype=void togglePaused()
$method=|void|togglePaused|

$beginSignals
$signalMethod=|started()
$signalMethod=|finished()
$signalMethod=|canceled()
$signalMethod=|paused()
$signalMethod=|resumed()
$signalMethod=|resultReadyAt(int)
$signalMethod=|resultsReadyAt(int,int)
$signalMethod=|progressRangeChanged(int,int)
$signalMethod=|progressValueChanged(int)
$signalMethod=|progressTextChanged(QString)
$endSignals

#pragma ENDDUMP
