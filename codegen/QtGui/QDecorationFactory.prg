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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=static QDecoration * create ( const QString & key )
$staticMethod=|QDecoration *|create|const QString &

$prototype=static QStringList keys ()
$staticMethod=|QStringList|keys|

$extraMethods

#pragma ENDDUMP
