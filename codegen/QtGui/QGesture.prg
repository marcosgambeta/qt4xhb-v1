$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QGesture INHERIT QObject

   METHOD new
   METHOD delete
   METHOD gestureCancelPolicy
   METHOD gestureType
   METHOD hasHotSpot
   METHOD hotSpot
   METHOD setGestureCancelPolicy
   METHOD setHotSpot
   METHOD state
   METHOD unsetHotSpot

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGesture>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QGesture ( QObject * parent = 0 )
HB_FUNC_STATIC( QGESTURE_NEW )
{
  QGesture * o = new QGesture ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=GestureCancelPolicy gestureCancelPolicy () const
$method=|QGesture::GestureCancelPolicy|gestureCancelPolicy|

$prototype=Qt::GestureType gestureType () const
$method=|Qt::GestureType|gestureType|

$prototype=bool hasHotSpot () const
$method=|bool|hasHotSpot|

$prototype=QPointF hotSpot () const
$method=|QPointF|hotSpot|

$prototype=void setGestureCancelPolicy ( GestureCancelPolicy policy )
$method=|void|setGestureCancelPolicy|QGesture::GestureCancelPolicy

$prototype=void setHotSpot ( const QPointF & value )
$method=|void|setHotSpot|const QPointF &

$prototype=Qt::GestureState state () const
$method=|Qt::GestureState|state|

$prototype=void unsetHotSpot ()
$method=|void|unsetHotSpot|

#pragma ENDDUMP
