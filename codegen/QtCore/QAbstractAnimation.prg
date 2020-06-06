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

$prototype=Direction direction () const
$method=|QAbstractAnimation::Direction|direction|

$prototypeV2=virtual int duration() const = 0

$prototype=QAnimationGroup * group () const
$method=|QAnimationGroup *|group|

$prototypeV2=int loopCount() const

$prototype=void  setDirection ( Direction direction )
$method=|void|setDirection|QAbstractAnimation::Direction

$prototype=void setLoopCount ( int loopCount )
$method=|void|setLoopCount|int

$prototype=State state () const
$method=|QAbstractAnimation::State|state|

$prototypeV2=int totalDuration() const

$prototype=void pause ()
$method=|void|pause|

$prototype=void resume ()
$method=|void|resume|

$prototype=void setCurrentTime ( int msecs )
$method=|void|setCurrentTime|int

$prototype=void setPaused ( bool paused )
$method=|void|setPaused|bool

$prototype=void start ( QAbstractAnimation::DeletionPolicy policy = KeepWhenStopped )
$method=|void|start|QAbstractAnimation::DeletionPolicy=QAbstractAnimation::KeepWhenStopped

$prototype=void stop ()
$method=|void|stop|

$beginSignals
$signal=|currentLoopChanged(int)
$signal=|directionChanged(QAbstractAnimation::Direction)
$signal=|finished()
$signal=|stateChanged(QAbstractAnimation::State,QAbstractAnimation::State)
$endSignals
$endSignals

#pragma ENDDUMP
