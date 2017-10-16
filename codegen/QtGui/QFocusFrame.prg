$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QFocusFrame INHERIT QWidget

   METHOD new
   METHOD setWidget
   METHOD widget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFocusFrame>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFocusFrame ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFOCUSFRAME_NEW )
{
  QFocusFrame * o = new QFocusFrame ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
void setWidget ( QWidget * widget )
*/
$method=|void|setWidget|QWidget *

/*
QWidget * widget () const
*/
$method=|QWidget *|widget|

#pragma ENDDUMP
