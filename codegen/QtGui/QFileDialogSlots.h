%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

$beginSlotsClass
$signal=|currentChanged( const QString & path )
$signal=|directoryEntered( const QString & directory )
$signal=|fileSelected( const QString & file )
$signal=|filesSelected( const QStringList & selected )
$signal=|filterSelected( const QString & filter )
$endSlotsClass
