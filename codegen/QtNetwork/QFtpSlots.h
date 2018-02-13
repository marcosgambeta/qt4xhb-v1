%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void commandFinished( int id, bool error )
$signal=|void commandStarted( int id )
$signal=|void dataTransferProgress( qint64 done, qint64 total )
$signal=|void done( bool error )
$signal=|void listInfo( const QUrlInfo & i )
$signal=|void rawCommandReply( int replyCode, const QString & detail )
$signal=|void readyRead()
$signal=|void stateChanged( int state )
$endSlotsClass
