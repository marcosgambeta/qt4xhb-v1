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

$prototype=QResizeEvent(const QSize &size, const QSize &oldSize)
$constructor=|new|const QSize &,const QSize &

$deleteMethod

$prototype=const QSize &size() const
$method=|const QSize &|size|

$prototype=const QSize &oldSize()const
$method=|const QSize &|oldSize|

#pragma ENDDUMP
