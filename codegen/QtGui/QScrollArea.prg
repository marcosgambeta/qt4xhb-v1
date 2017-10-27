$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QScrollArea INHERIT QAbstractScrollArea

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD ensureVisible
   METHOD ensureWidgetVisible
   METHOD setAlignment
   METHOD setWidget
   METHOD setWidgetResizable
   METHOD takeWidget
   METHOD widget
   METHOD widgetResizable
   METHOD focusNextPrevChild
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScrollArea>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QScrollArea ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSCROLLAREA_NEW )
{
  QScrollArea * o = new QScrollArea ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
void ensureVisible ( int x, int y, int xmargin = 50, int ymargin = 50 )
*/
$method=|void|ensureVisible|int,int,int=50,int=50

/*
void ensureWidgetVisible ( QWidget * childWidget, int xmargin = 50, int ymargin = 50 )
*/
$method=|void|ensureWidgetVisible|QWidget *,int=50,int=50

/*
void setAlignment ( Qt::Alignment )
*/
$method=|void|setAlignment|Qt::Alignment

/*
void setWidget ( QWidget * widget )
*/
$method=|void|setWidget|QWidget *

/*
void setWidgetResizable ( bool resizable )
*/
$method=|void|setWidgetResizable|bool

/*
QWidget * takeWidget ()
*/
$method=|QWidget *|takeWidget|

/*
QWidget * widget () const
*/
$method=|QWidget *|widget|

/*
bool widgetResizable () const
*/
$method=|bool|widgetResizable|

/*
virtual bool focusNextPrevChild ( bool next )
*/
$virtualMethod=|bool|focusNextPrevChild|bool

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
