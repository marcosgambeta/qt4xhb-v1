%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$includes

$prototype=QFocusFrame ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototype=QWidget * widget () const
$method=|QWidget *|widget|

#pragma ENDDUMP
