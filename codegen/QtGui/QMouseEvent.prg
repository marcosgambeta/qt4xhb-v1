$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QMOUSEEVENT
#endif

CLASS QMouseEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD button
   METHOD buttons
   METHOD hasExtendedInfo
   METHOD posF
   METHOD createExtendedMouseEvent

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMouseEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QMouseEvent(Type type, const QPoint &pos, Qt::MouseButton button,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
$internalConstructor=|new1|QEvent::Type,const QPoint &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

$prototype=QMouseEvent(Type type, const QPoint &pos, const QPoint &globalPos,Qt::MouseButton button, Qt::MouseButtons buttons,Qt::KeyboardModifiers modifiers)
$internalConstructor=|new2|QEvent::Type,const QPoint &,const QPoint &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

//[1]QMouseEvent(Type type, const QPoint &pos, Qt::MouseButton button,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
//[2]QMouseEvent(Type type, const QPoint &pos, const QPoint &globalPos,Qt::MouseButton button, Qt::MouseButtons buttons,Qt::KeyboardModifiers modifiers)

HB_FUNC_STATIC( QMOUSEEVENT_NEW )
{
  if( ISNUMPAR(5) && ISNUM(1) && ISQPOINT(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QMouseEvent_new1();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QMouseEvent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

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

$prototype=Qt::MouseButton button() const
$method=|Qt::MouseButton|button|

$prototype=Qt::MouseButtons buttons() const
$method=|Qt::MouseButtons|buttons|

$prototype=bool hasExtendedInfo() const
$method=|bool|hasExtendedInfo|

$prototype=QPointF posF() const
$method=|QPointF|posF|

$prototype=static QMouseEvent *createExtendedMouseEvent(Type type, const QPointF &pos,const QPoint &globalPos, Qt::MouseButton button,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
$staticMethod=|QMouseEvent *|createExtendedMouseEvent|QEvent::Type,const QPointF &,const QPoint &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

#pragma ENDDUMP
