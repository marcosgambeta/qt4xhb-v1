%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtWebKit

$header

$includes

$beginSlotsClass
$signal=|iconChanged()
$signal=|linkClicked( const QUrl & url )
$signal=|loadFinished( bool ok )
$signal=|loadProgress( int progress )
$signal=|loadStarted()
$signal=|statusBarMessage( const QString & text )
$signal=|titleChanged( const QString & title )
$signal=|urlChanged( const QUrl & url )
$endSlotsClass
