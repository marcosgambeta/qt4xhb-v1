$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QANIMATIONGROUP
#endif

CLASS QAbstractAnimation INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentLoop
   METHOD currentLoopTime
   METHOD currentTime
   METHOD direction
   METHOD duration
   METHOD group
   METHOD loopCount
   METHOD setDirection
   METHOD setLoopCount
   METHOD state
   METHOD totalDuration
   METHOD pause
   METHOD resume
   METHOD setCurrentTime
   METHOD setPaused
   METHOD start
   METHOD stop

   METHOD onCurrentLoopChanged
   METHOD onDirectionChanged
   METHOD onFinished
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractAnimation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
int currentLoop () const
*/
$method=|int|currentLoop|

/*
int currentLoopTime () const
*/
$method=|int|currentLoopTime|

/*
int currentTime () const
*/
$method=|int|currentTime|

/*
Direction direction () const
*/
$method=|QAbstractAnimation::Direction|direction|

/*
virtual int duration () const = 0
*/
$virtualMethod=|int|duration|

/*
QAnimationGroup * group () const
*/
$method=|QAnimationGroup *|group|

/*
int loopCount () const
*/
$method=|int|loopCount|

/*
void  setDirection ( Direction direction )
*/
$method=|void|setDirection|QAbstractAnimation::Direction

/*
void setLoopCount ( int loopCount )
*/
$method=|void|setLoopCount|int

/*
State state () const
*/
$method=|QAbstractAnimation::State|state|

/*
int totalDuration () const
*/
$method=|int|totalDuration|

/*
void pause ()
*/
$method=|void|pause|

/*
void resume ()
*/
$method=|void|resume|

/*
void setCurrentTime ( int msecs )
*/
$method=|void|setCurrentTime|int

/*
void setPaused ( bool paused )
*/
$method=|void|setPaused|bool

/*
void start ( QAbstractAnimation::DeletionPolicy policy = KeepWhenStopped )
*/
$method=|void|start|QAbstractAnimation::DeletionPolicy=QAbstractAnimation::KeepWhenStopped

/*
void stop ()
*/
$method=|void|stop|

#pragma ENDDUMP
