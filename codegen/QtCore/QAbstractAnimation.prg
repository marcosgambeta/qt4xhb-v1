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

#include <QtCore/QAnimationGroup>

$deleteMethod

$prototypeV2=int currentLoop() const

$prototypeV2=int currentLoopTime() const

$prototypeV2=int currentTime() const

$prototypeV2=QAbstractAnimation::Direction direction() const

$prototypeV2=virtual int duration() const = 0

$prototypeV2=QAnimationGroup * group() const

$prototypeV2=int loopCount() const

$prototype=void  setDirection ( Direction direction )
$method=|void|setDirection|QAbstractAnimation::Direction

$prototype=void setLoopCount ( int loopCount )
$method=|void|setLoopCount|int

$prototypeV2=QAbstractAnimation::State state() const

$prototypeV2=int totalDuration() const

$prototypeV2=void pause()

$prototypeV2=void resume()

$prototype=void setCurrentTime ( int msecs )
$method=|void|setCurrentTime|int

$prototype=void setPaused ( bool paused )
$method=|void|setPaused|bool

$prototype=void start ( QAbstractAnimation::DeletionPolicy policy = KeepWhenStopped )
$method=|void|start|QAbstractAnimation::DeletionPolicy=QAbstractAnimation::KeepWhenStopped

$prototypeV2=void stop()

$beginSignals
$signal=|currentLoopChanged(int)
$signal=|directionChanged(QAbstractAnimation::Direction)
$signal=|finished()
$signal=|stateChanged(QAbstractAnimation::State,QAbstractAnimation::State)
$endSignals
$endSignals

#pragma ENDDUMP
