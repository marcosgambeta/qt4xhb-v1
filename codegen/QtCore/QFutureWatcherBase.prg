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

$prototypeV2=int progressValue() const

$prototypeV2=int progressMinimum() const

$prototypeV2=int progressMaximum() const

$prototype=QString progressText() const
$method=|QString|progressText|

$prototypeV2=bool isStarted() const

$prototypeV2=bool isFinished() const

$prototypeV2=bool isRunning() const

$prototypeV2=bool isCanceled() const

$prototypeV2=bool isPaused() const

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
