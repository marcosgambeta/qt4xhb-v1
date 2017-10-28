$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QMOUSEEVENT
#endif

CLASS QMouseEvent INHERIT QInputEvent

   METHOD new1
   METHOD new2
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

/*
QMouseEvent(Type type, const QPoint &pos, Qt::MouseButton button,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
$constructor=|new1|QEvent::Type,const QPoint &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

/*
QMouseEvent(Type type, const QPoint &pos, const QPoint &globalPos,Qt::MouseButton button, Qt::MouseButtons buttons,Qt::KeyboardModifiers modifiers)
*/
$constructor=|new2|QEvent::Type,const QPoint &,const QPoint &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

//[1]QMouseEvent(Type type, const QPoint &pos, Qt::MouseButton button,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
//[2]QMouseEvent(Type type, const QPoint &pos, const QPoint &globalPos,Qt::MouseButton button, Qt::MouseButtons buttons,Qt::KeyboardModifiers modifiers)

HB_FUNC_STATIC( QMOUSEEVENT_NEW )
{
  if( ISNUMPAR(5) && ISNUM(1) && ISQPOINT(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QMOUSEEVENT_NEW1 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QMOUSEEVENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QPoint &pos() const
*/
$method=|const QPoint &|pos|

/*
const QPoint &globalPos() const
*/
$method=|const QPoint &|globalPos|

/*
int x() const
*/
$method=|int|x|

/*
int y() const
*/
$method=|int|y|

/*
int globalX() const
*/
$method=|int|globalX|

/*
int globalY() const
*/
$method=|int|globalY|

/*
Qt::MouseButton button() const
*/
$method=|Qt::MouseButton|button|

/*
Qt::MouseButtons buttons() const
*/
$method=|Qt::MouseButtons|buttons|

/*
bool hasExtendedInfo() const
*/
$method=|bool|hasExtendedInfo|

/*
QPointF posF() const
*/
$method=|QPointF|posF|

/*
static QMouseEvent *createExtendedMouseEvent(Type type, const QPointF &pos,const QPoint &globalPos, Qt::MouseButton button,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
$staticMethod=|QMouseEvent *|createExtendedMouseEvent|QEvent::Type,const QPointF &,const QPoint &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

#pragma ENDDUMP
