$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QTabletEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD pos
   METHOD globalPos
   METHOD hiResGlobalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD hiResGlobalX
   METHOD hiResGlobalY
   METHOD device
   METHOD pointerType
   METHOD uniqueId
   METHOD pressure
   METHOD z
   METHOD tangentialPressure
   METHOD rotation
   METHOD xTilt
   METHOD yTilt

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTabletEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTabletEvent(Type t, const QPoint &pos, const QPoint &globalPos, const QPointF &hiResGlobalPos,int device, int pointerType, qreal pressure, int xTilt, int yTilt,qreal tangentialPressure, qreal rotation, int z,Qt::KeyboardModifiers keyState, qint64 uniqueID)
HB_FUNC_STATIC( QTABLETEVENT_NEW )
{
  int par13 = hb_parni(13);
  QTabletEvent * o = new QTabletEvent ( (QEvent::Type) hb_parni(1), *PQPOINT(2), *PQPOINT(3), *PQPOINTF(4), PINT(5), PINT(6), PQREAL(7), PINT(8), PINT(9), PQREAL(10), PQREAL(11), PINT(12), (Qt::KeyboardModifiers) par13, PQINT64(14) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=const QPoint &pos() const
$method=|const QPoint &|pos|

$prototype=const QPoint &globalPos() const
$method=|const QPoint &|globalPos|

$prototype=const QPointF &hiResGlobalPos() const
$method=|const QPointF &|hiResGlobalPos|

$prototype=int x() const
$method=|int|x|

$prototype=int y() const
$method=|int|y|

$prototype=int globalX() const
$method=|int|globalX|

$prototype=int globalY() const
$method=|int|globalY|

$prototype=qreal hiResGlobalX() const
$method=|qreal|hiResGlobalX|

$prototype=qreal hiResGlobalY() const
$method=|qreal|hiResGlobalY|

$prototype=TabletDevice device() const
$method=|QTabletEvent::TabletDevice|device|

$prototype=PointerType pointerType() const
$method=|QTabletEvent::PointerType|pointerType|

$prototype=qint64 uniqueId() const
$method=|qint64|uniqueId|

$prototype=qreal pressure() const
$method=|qreal|pressure|

$prototype=int z() const
$method=|int|z|

$prototype=qreal tangentialPressure() const
$method=|qreal|tangentialPressure|

$prototype=qreal rotation() const
$method=|qreal|rotation|

$prototype=int xTilt() const
$method=|int|xTilt|

$prototype=int yTilt() const
$method=|int|yTilt|

#pragma ENDDUMP
