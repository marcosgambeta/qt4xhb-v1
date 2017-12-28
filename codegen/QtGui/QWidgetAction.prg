$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QWidgetAction INHERIT QAction

   METHOD new
   METHOD delete
   METHOD defaultWidget
   METHOD releaseWidget
   METHOD requestWidget
   METHOD setDefaultWidget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWidgetAction>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QWidgetAction ( QObject * parent )
HB_FUNC_STATIC( QWIDGETACTION_NEW )
{
  QWidgetAction * o = new QWidgetAction ( PQOBJECT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=QWidget * defaultWidget () const
$method=|QWidget *|defaultWidget|

$prototype=void releaseWidget ( QWidget * widget )
$method=|void|releaseWidget|QWidget *

$prototype=QWidget * requestWidget ( QWidget * parent )
$method=|QWidget *|requestWidget|QWidget *

$prototype=void setDefaultWidget ( QWidget * widget )
$method=|void|setDefaultWidget|QWidget *

#pragma ENDDUMP
