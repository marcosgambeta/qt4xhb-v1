%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

/*
enum QUdpSocket::BindFlag
flags QUdpSocket::BindMode
*/
#define QUdpSocket_ShareAddress                                      0x1
#define QUdpSocket_DontShareAddress                                  0x2
#define QUdpSocket_ReuseAddressHint                                  0x4
#define QUdpSocket_DefaultForPlatform                                0x0
