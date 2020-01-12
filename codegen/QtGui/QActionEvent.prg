%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QAction>

$prototype=QActionEvent ( int type, QAction * action, QAction * before = 0 )
$constructor=|new|int,QAction *,QAction *=0

$deleteMethod

$prototype=QAction * action () const
$method=|QAction *|action|

$prototype=QAction * before () const
$method=|QAction *|before|

#pragma ENDDUMP
