%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QSystemTrayIcon::ActivationReason
*/
#define QSystemTrayIcon_Unknown                                      0
#define QSystemTrayIcon_Context                                      1
#define QSystemTrayIcon_DoubleClick                                  2
#define QSystemTrayIcon_Trigger                                      3
#define QSystemTrayIcon_MiddleClick                                  4

/*
enum QSystemTrayIcon::MessageIcon
*/
#define QSystemTrayIcon_NoIcon                                       0
#define QSystemTrayIcon_Information                                  1
#define QSystemTrayIcon_Warning                                      2
#define QSystemTrayIcon_Critical                                     3
