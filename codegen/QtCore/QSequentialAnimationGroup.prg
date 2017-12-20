$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPAUSEANIMATION
REQUEST QABSTRACTANIMATION
#endif

CLASS QSequentialAnimationGroup INHERIT QAnimationGroup

   METHOD new
   METHOD delete
   METHOD addPause
   METHOD currentAnimation
   METHOD insertPause
   METHOD duration

   METHOD onCurrentAnimationChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSequentialAnimationGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QSequentialAnimationGroup ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QPauseAnimation * addPause ( int msecs )
$method=|QPauseAnimation *|addPause|int

$prototype=QAbstractAnimation * currentAnimation () const
$method=|QAbstractAnimation *|currentAnimation|

$prototype=QPauseAnimation * insertPause ( int index, int msecs )
$method=|QPauseAnimation *|insertPause|int,int

$prototype=virtual int duration () const
$virtualMethod=|int|duration|

#pragma ENDDUMP
