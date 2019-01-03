%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

/*
enum QSysInfo::Endian
*/
#define QSysInfo_BigEndian                                           0
#define QSysInfo_LittleEndian                                        1
#define QSysInfo_ByteOrder                                           <platform-dependent>

/*
enum QSysInfo::MacVersion
*/
#define QSysInfo_MV_9                                                0x0001
#define QSysInfo_MV_10_0                                             0x0002
#define QSysInfo_MV_10_1                                             0x0003
#define QSysInfo_MV_10_2                                             0x0004
#define QSysInfo_MV_10_3                                             0x0005
#define QSysInfo_MV_10_4                                             0x0006
#define QSysInfo_MV_10_5                                             0x0007
#define QSysInfo_MV_10_6                                             0x0008
#define QSysInfo_MV_10_7                                             0x0009
#define QSysInfo_MV_Unknown                                          0x0000
#define QSysInfo_MV_CHEETAH                                          QSysInfo_MV_10_0
#define QSysInfo_MV_PUMA                                             QSysInfo_MV_10_1
#define QSysInfo_MV_JAGUAR                                           QSysInfo_MV_10_2
#define QSysInfo_MV_PANTHER                                          QSysInfo_MV_10_3
#define QSysInfo_MV_TIGER                                            QSysInfo_MV_10_4
#define QSysInfo_MV_LEOPARD                                          QSysInfo_MV_10_5
#define QSysInfo_MV_SNOWLEOPARD                                      QSysInfo_MV_10_6
#define QSysInfo_MV_LION                                             QSysInfo_MV_10_7

/*
enum QSysInfo::S60Version
*/
#define QSysInfo_SV_S60_3_1                                          QSysInfo_SV_9_2
#define QSysInfo_SV_S60_3_2                                          QSysInfo_SV_9_3
#define QSysInfo_SV_S60_5_0                                          QSysInfo_SV_9_4
#define QSysInfo_SV_S60_5_1                                          QSysInfo_SV_SF_2
#define QSysInfo_SV_S60_5_2                                          QSysInfo_SV_SF_3
#define QSysInfo_SV_S60_5_3                                          QSysInfo_SV_API_5_3
#define QSysInfo_SV_S60_5_4                                          QSysInfo_SV_API_5_4
#define QSysInfo_SV_S60_5_5                                          QSysInfo_SV_API_5_5
#define QSysInfo_SV_S60_Unknown                                      QSysInfo_SV_Unknown

/*
enum QSysInfo::Sizes
*/
#define QSysInfo_WordSize                                            ( sizeof( void * ) <<3 )

/*
enum QSysInfo::SymbianVersion
*/
#define QSysInfo_SV_9_2                                              10
#define QSysInfo_SV_9_3                                              20
#define QSysInfo_SV_9_4                                              30
#define QSysInfo_SV_SF_1                                             QSysInfo_SV_9_4
#define QSysInfo_SV_SF_2                                             40
#define QSysInfo_SV_SF_3                                             50
#define QSysInfo_SV_SF_4                                             60
#define QSysInfo_SV_API_5_3                                          70
#define QSysInfo_SV_API_5_4                                          80
#define QSysInfo_SV_API_5_5                                          90
#define QSysInfo_SV_Unknown                                          1000000

/*
enum QSysInfo::WinVersion
*/
#define QSysInfo_WV_32s                                              0x0001
#define QSysInfo_WV_95                                               0x0002
#define QSysInfo_WV_98                                               0x0003
#define QSysInfo_WV_Me                                               0x0004
#define QSysInfo_WV_NT                                               0x0010
#define QSysInfo_WV_2000                                             0x0020
#define QSysInfo_WV_XP                                               0x0030
#define QSysInfo_WV_2003                                             0x0040
#define QSysInfo_WV_VISTA                                            0x0080
#define QSysInfo_WV_WINDOWS7                                         0x0090
#define QSysInfo_WV_4_0                                              QSysInfo_WV_NT
#define QSysInfo_WV_5_0                                              QSysInfo_WV_2000
#define QSysInfo_WV_5_1                                              QSysInfo_WV_XP
#define QSysInfo_WV_5_2                                              QSysInfo_WV_2003
#define QSysInfo_WV_6_0                                              QSysInfo_WV_VISTA
#define QSysInfo_WV_6_1                                              QSysInfo_WV_WINDOWS7
#define QSysInfo_WV_CE                                               0x0100
#define QSysInfo_WV_CENET                                            0x0200
#define QSysInfo_WV_CE_5                                             0x0300
#define QSysInfo_WV_CE_6                                             0x0400
#define QSysInfo_WV_DOS_based                                        0x000f
#define QSysInfo_WV_NT_based                                         0x00f0
#define QSysInfo_WV_CE_based                                         0x0f00
