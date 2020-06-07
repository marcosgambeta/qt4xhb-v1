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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>

$prototype=QWebHistoryItem ( const QWebHistoryItem & other )
$constructor=|new|const QWebHistoryItem &

$deleteMethod

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototypeV2=bool isValid() const

$prototype=QDateTime lastVisited () const
$method=|QDateTime|lastVisited|

$prototype=QUrl originalUrl () const
$method=|QUrl|originalUrl|

$prototype=void setUserData ( const QVariant & userData )
$method=|void|setUserData|const QVariant &

$prototypeV2=QString title() const

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=QVariant userData () const
$method=|QVariant|userData|

$extraMethods

#pragma ENDDUMP
