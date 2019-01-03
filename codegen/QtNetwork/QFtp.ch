%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

/*
enum QFtp::Command
*/
#define QFtp_None                                                    0
#define QFtp_SetTransferMode                                         1
#define QFtp_SetProxy                                                2
#define QFtp_ConnectToHost                                           3
#define QFtp_Login                                                   4
#define QFtp_Close                                                   5
#define QFtp_List                                                    6
#define QFtp_Cd                                                      7
#define QFtp_Get                                                     8
#define QFtp_Put                                                     9
#define QFtp_Remove                                                  10
#define QFtp_Mkdir                                                   11
#define QFtp_Rmdir                                                   12
#define QFtp_Rename                                                  13
#define QFtp_RawCommand                                              14

/*
enum QFtp::Error
*/
#define QFtp_NoError                                                 0
#define QFtp_HostNotFound                                            2
#define QFtp_ConnectionRefused                                       3
#define QFtp_NotConnected                                            4
#define QFtp_UnknownError                                            1

/*
enum QFtp::State
*/
#define QFtp_Unconnected                                             0
#define QFtp_HostLookup                                              1
#define QFtp_Connecting                                              2
#define QFtp_Connected                                               3
#define QFtp_LoggedIn                                                4
#define QFtp_Closing                                                 5

/*
enum QFtp::TransferMode
*/
#define QFtp_Passive                                                 1
#define QFtp_Active                                                  0

/*
enum QFtp::TransferType
*/
#define QFtp_Binary                                                  0
#define QFtp_Ascii                                                   1
