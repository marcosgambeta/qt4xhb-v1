%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtWebKit

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWebInspector ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=QWebPage * page() const

$prototype=void setPage ( QWebPage * page )
$method=|void|setPage|QWebPage *

$prototype=virtual bool event ( QEvent * ev )
$virtualMethod=|bool|event|QEvent *

$prototypeV2=virtual QSize sizeHint() const

#pragma ENDDUMP
