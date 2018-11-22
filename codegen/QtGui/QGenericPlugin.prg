%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QObject * create ( const QString & key, const QString & specification ) = 0
$virtualMethod=|QObject *|create|const QString &,const QString &

$prototype=virtual QStringList keys () const = 0
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
