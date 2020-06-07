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

$prototype=void back ()
$method=|void|back|

$prototype=QWebHistoryItem backItem () const
$method=|QWebHistoryItem|backItem|

$prototype=QList<QWebHistoryItem> backItems ( int maxItems ) const
$method=|QList<QWebHistoryItem>|backItems|int

$prototypeV2=bool canGoBack() const

$prototypeV2=bool canGoForward() const

$prototype=void clear ()
$method=|void|clear|

$prototypeV2=int count() const

$prototype=QWebHistoryItem currentItem () const
$method=|QWebHistoryItem|currentItem|

$prototypeV2=int currentItemIndex() const

$prototype=void forward ()
$method=|void|forward|

$prototype=QWebHistoryItem forwardItem () const
$method=|QWebHistoryItem|forwardItem|

$prototype=QList<QWebHistoryItem> forwardItems ( int maxItems ) const
$method=|QList<QWebHistoryItem>|forwardItems|int

$prototype=void goToItem ( const QWebHistoryItem & item )
$method=|void|goToItem|const QWebHistoryItem &

$prototype=QWebHistoryItem itemAt ( int i ) const
$method=|QWebHistoryItem|itemAt|int

$prototype=QList<QWebHistoryItem> items () const
$method=|QList<QWebHistoryItem>|items|

$prototypeV2=int maximumItemCount() const

$prototype=void setMaximumItemCount ( int count )
$method=|void|setMaximumItemCount|int

$extraMethods

#pragma ENDDUMP
