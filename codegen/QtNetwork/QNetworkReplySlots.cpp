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
$slot=|downloadProgress( qint64 bytesReceived, qint64 bytesTotal )
$slot=|error( QNetworkReply::NetworkError code )
$slot=|finished()
$slot=|metaDataChanged()
$slot=|sslErrors( const QList<QSslError> & errors )
$slot=|uploadProgress( qint64 bytesSent, qint64 bytesTotal )
$endSlotsClass
