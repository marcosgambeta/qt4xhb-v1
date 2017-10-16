$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QResizeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD size
   METHOD oldSize

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QResizeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QResizeEvent(const QSize &size, const QSize &oldSize)
*/
HB_FUNC_STATIC( QRESIZEEVENT_NEW )
{
  QResizeEvent * o = new QResizeEvent ( *PQSIZE(1), *PQSIZE(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
const QSize &size() const
*/
$method=|const QSize &|size|

/*
const QSize &oldSize()const
*/
$method=|const QSize &|oldSize|

#pragma ENDDUMP
