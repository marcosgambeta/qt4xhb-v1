$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWEBPAGE
REQUEST QSIZE
#endif

CLASS QWebInspector INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD page
   METHOD setPage
   METHOD event
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWebInspector>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWebInspector ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
QWebPage * page () const
*/
$method=|QWebPage *|page|

/*
void setPage ( QWebPage * page )
*/
$method=|void|setPage|QWebPage *

/*
virtual bool event ( QEvent * ev )
*/
$virtualMethod=|bool|event|QEvent *

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
