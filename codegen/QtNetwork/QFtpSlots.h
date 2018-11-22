%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$signal=|commandFinished( int id, bool error )
$signal=|commandStarted( int id )
$signal=|dataTransferProgress( qint64 done, qint64 total )
$signal=|done( bool error )
$signal=|listInfo( const QUrlInfo & i )
$signal=|rawCommandReply( int replyCode, const QString & detail )
$signal=|readyRead()
$signal=|stateChanged( int state )
$endSlotsClass
