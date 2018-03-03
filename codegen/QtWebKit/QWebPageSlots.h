%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

#include <QWebFrame>
#include <QNetworkReply>

$beginSlotsClass
$signal=|contentsChanged()
$signal=|databaseQuotaExceeded( QWebFrame * frame, QString databaseName )
$signal=|downloadRequested( const QNetworkRequest & request )
$signal=|frameCreated( QWebFrame * frame )
$signal=|geometryChangeRequested( const QRect & geom )
$signal=|linkClicked( const QUrl & url )
$signal=|linkHovered( const QString & link, const QString & title, const QString & textContent )
$signal=|loadFinished( bool ok )
$signal=|loadProgress( int progress )
$signal=|loadStarted()
$signal=|menuBarVisibilityChangeRequested( bool visible )
$signal=|microFocusChanged()
$signal=|printRequested( QWebFrame * frame )
$signal=|repaintRequested( const QRect & dirtyRect )
$signal=|restoreFrameStateRequested( QWebFrame * frame )
$signal=|saveFrameStateRequested( QWebFrame * frame, QWebHistoryItem * item )
$signal=|scrollRequested( int dx, int dy, const QRect & rectToScroll )
$signal=|selectionChanged()
$signal=|statusBarMessage( const QString & text )
$signal=|statusBarVisibilityChangeRequested( bool visible )
$signal=|toolBarVisibilityChangeRequested( bool visible )
$signal=|unsupportedContent( QNetworkReply * reply )
$signal=|windowCloseRequested()
$endSlotsClass
