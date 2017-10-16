$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QEVENTPRIVATE
#endif

CLASS QClipboardEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD data

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QClipboardEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QClipboardEvent(QEventPrivate *data)
*/
$constructor=|new|QEventPrivate *

$deleteMethod

/*
QEventPrivate *data()
*/
$method=|QEventPrivate *|data|

#pragma ENDDUMP
