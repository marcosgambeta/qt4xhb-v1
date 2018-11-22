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
$signal=|contentsSizeChanged( const QSize & size )
$signal=|iconChanged()
$signal=|initialLayoutCompleted()
$signal=|javaScriptWindowObjectCleared()
$signal=|loadFinished( bool ok )
$signal=|loadStarted()
$signal=|pageChanged()
$signal=|titleChanged( const QString & title )
$signal=|urlChanged( const QUrl & url )
$endSlotsClass
