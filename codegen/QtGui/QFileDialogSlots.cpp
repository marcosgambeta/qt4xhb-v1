%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|currentChanged( const QString & path )
$slot=|directoryEntered( const QString & directory )
$slot=|fileSelected( const QString & file )
$slot=|filesSelected( const QStringList & selected )
$slot=|filterSelected( const QString & filter )
$endSlotsClass

$signalMethod=|currentChanged(QString)
$signalMethod=|directoryEntered(QString)
$signalMethod=|fileSelected(QString)
$signalMethod=|filesSelected(QStringList)
$signalMethod=|filterSelected(QString)
