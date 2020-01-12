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

$addSignals

$endClass

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
$signal=|started()
$signal=|finished()
$signal=|canceled()
$signal=|paused()
$signal=|resumed()
$signal=|resultReadyAt(int)
$signal=|resultsReadyAt(int,int)
$signal=|progressRangeChanged(int,int)
$signal=|progressValueChanged(int)
$signal=|progressTextChanged(QString)
$endSignals

#pragma ENDDUMP
