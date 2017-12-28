$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QWheelEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD delta
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD buttons
   METHOD orientation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWheelEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QWheelEvent(const QPoint &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
$internalConstructor=|new1|const QPoint &,int,Qt::MouseButtons,Qt::KeyboardModifiers,Qt::Orientation=Qt::Vertical

$prototype=QWheelEvent(const QPoint &pos, const QPoint& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
$internalConstructor=|new2|const QPoint &,const QPoint &,int,Qt::MouseButtons,Qt::KeyboardModifiers,Qt::Orientation=Qt::Vertical

//[1]QWheelEvent(const QPoint &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
//[2]QWheelEvent(const QPoint &pos, const QPoint& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)

HB_FUNC_STATIC( QWHEELEVENT_NEW )
{
  if( ISBETWEEN(4,5) && ISQPOINT(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    QWheelEvent_new1();
  }
  else if( ISBETWEEN(5,6) && ISQPOINT(1) && ISQPOINT(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    QWheelEvent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int delta() const
$method=|int|delta|

$prototype=const QPoint &pos() const
$method=|const QPoint &|pos|

$prototype=const QPoint &globalPos() const
$method=|const QPoint &|globalPos|

$prototype=int x() const
$method=|int|x|

$prototype=int y() const
$method=|int|y|

$prototype=int globalX() const
$method=|int|globalX|

$prototype=int globalY() const
$method=|int|globalY|

$prototype=Qt::MouseButtons buttons() const
$method=|Qt::MouseButtons|buttons|

$prototype=Qt::Orientation orientation() const
$method=|Qt::Orientation|orientation|

#pragma ENDDUMP
