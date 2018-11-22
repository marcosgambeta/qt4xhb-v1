%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=ActiveQt

$header

$includes

$beginSlotsClass
$signal=|exception( int code, const QString & source, const QString & desc, const QString & help )
$signal=|propertyChanged( const QString & name )
$signal=|signal( const QString & name, int argc, void * argv )
$endSlotsClass
