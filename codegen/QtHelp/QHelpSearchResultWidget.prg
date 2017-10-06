$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QHelpSearchResultWidget INHERIT QWidget

   METHOD delete
   METHOD linkAt

   METHOD onRequestShowLink

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHelpSearchResultWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
QUrl linkAt ( const QPoint & point )
*/
$method=|QUrl|linkAt|const QPoint &

#pragma ENDDUMP
