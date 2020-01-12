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
$signal=|error( QImageReader::ImageReaderError error )
$signal=|finished()
$signal=|frameChanged( int frameNumber )
$signal=|resized( const QSize & size )
$signal=|started()
$signal=|stateChanged( QMovie::MovieState state )
$signal=|updated( const QRect & rect )
$endSlotsClass
