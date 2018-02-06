%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void currentChanged( const QString & path );
$signal=|void directoryEntered( const QString & directory );
$signal=|void fileSelected( const QString & file );
$signal=|void filesSelected( const QStringList & selected );
$signal=|void filterSelected( const QString & filter );
$endSlotsClass
