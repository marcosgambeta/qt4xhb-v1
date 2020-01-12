%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=ActiveQt

$header

$includes

$beginSlotsClass
$slot=|entered()
$slot=|error( int code, const QString & description, int sourcePosition, const QString & sourceText )
$slot=|finished()
$slot=|finished( const QVariant & result )
$slot=|finished( int code, const QString & source, const QString & description, const QString & help )
$slot=|stateChanged( int state )
$endSlotsClass
