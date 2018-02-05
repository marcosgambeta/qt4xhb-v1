%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWEBPAGE
REQUEST QSIZE
#endif

CLASS QWebInspector INHERIT QWidget

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

$prototype=QWebInspector ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QWebPage * page () const
$method=|QWebPage *|page|

$prototype=void setPage ( QWebPage * page )
$method=|void|setPage|QWebPage *

$prototype=virtual bool event ( QEvent * ev )
$virtualMethod=|bool|event|QEvent *

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
