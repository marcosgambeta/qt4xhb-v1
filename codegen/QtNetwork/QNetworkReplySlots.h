%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

#include <QSslError>

$beginSlotsClass
$signal=|downloadProgress( qint64 bytesReceived, qint64 bytesTotal )
$signal=|error( QNetworkReply::NetworkError code )
$signal=|finished()
$signal=|metaDataChanged()
$signal=|sslErrors( const QList<QSslError> & errors )
$signal=|uploadProgress( qint64 bytesSent, qint64 bytesTotal )
$endSlotsClass
