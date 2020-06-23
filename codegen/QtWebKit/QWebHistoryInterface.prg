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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual void addHistoryEntry( const QString & url ) = 0

$prototypeV2=virtual bool historyContains( const QString & url ) const = 0

$prototypeV2=static QWebHistoryInterface * defaultInterface()

$prototypeV2=static void setDefaultInterface( QWebHistoryInterface * defaultInterface )

#pragma ENDDUMP
