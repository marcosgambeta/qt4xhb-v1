%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$slot=|encrypted()
$slot=|encryptedBytesWritten( qint64 written )
$slot=|modeChanged( QSslSocket::SslMode mode )
$slot=|peerVerifyError( const QSslError & error )
$slot=|sslErrors( const QList<QSslError> & errors )
$endSlotsClass
