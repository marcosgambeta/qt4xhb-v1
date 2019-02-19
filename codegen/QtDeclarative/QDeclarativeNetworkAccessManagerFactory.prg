%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QNetworkAccessManager>

$deleteMethod

$prototype=virtual QNetworkAccessManager * create ( QObject * parent ) = 0
$virtualMethod=|QNetworkAccessManager *|create|QObject *

$extraMethods

#pragma ENDDUMP
