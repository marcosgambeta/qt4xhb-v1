$header

#include "hbclass.ch"

CLASS QSwipeGesture INHERIT QGesture

   METHOD delete
   METHOD horizontalDirection
   METHOD setSwipeAngle
   METHOD swipeAngle
   METHOD verticalDirection

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSwipeGesture>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=SwipeDirection horizontalDirection () const
$method=|QSwipeGesture::SwipeDirection|horizontalDirection|

$prototype=void setSwipeAngle ( qreal value )
$method=|void|setSwipeAngle|qreal

$prototype=qreal swipeAngle () const
$method=|qreal|swipeAngle|

$prototype=SwipeDirection verticalDirection () const
$method=|QSwipeGesture::SwipeDirection|verticalDirection|

#pragma ENDDUMP
