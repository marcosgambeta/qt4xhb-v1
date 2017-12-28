$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD action
   METHOD before

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QActionEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QActionEvent ( int type, QAction * action, QAction * before = 0 )
$constructor=|new|int,QAction *,QAction *=0

$deleteMethod

$prototype=QAction * action () const
$method=|QAction *|action|

$prototype=QAction * before () const
$method=|QAction *|before|

#pragma ENDDUMP
