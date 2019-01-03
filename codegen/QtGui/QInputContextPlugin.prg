%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QInputContext>

$deleteMethod

$prototype=virtual QInputContext * create ( const QString & key ) = 0
$virtualMethod=|QInputContext *|create|const QString &

$prototype=virtual QString description ( const QString & key ) = 0
$virtualMethod=|QString|description|const QString &

$prototype=virtual QString displayName ( const QString & key ) = 0
$virtualMethod=|QString|displayName|const QString &

$prototype=virtual QStringList keys () const = 0
$virtualMethod=|QStringList|keys|

$prototype=virtual QStringList languages ( const QString & key ) = 0
$virtualMethod=|QStringList|languages|const QString &

#pragma ENDDUMP
