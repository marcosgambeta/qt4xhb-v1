/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QDATASTREAM_CH
#define QDATASTREAM_CH

/*
enum QDataStream::ByteOrder
*/
#define QDataStream_BigEndian                                        QSysInfo_BigEndian
#define QDataStream_LittleEndian                                     QSysInfo_LittleEndian

/*
enum QDataStream::FloatingPointPrecision
*/
#define QDataStream_SinglePrecision                                  0
#define QDataStream_DoublePrecision                                  1

/*
enum QDataStream::Status
*/
#define QDataStream_Ok                                               0
#define QDataStream_ReadPastEnd                                      1
#define QDataStream_ReadCorruptData                                  2
#define QDataStream_WriteFailed                                      3

/*
enum QDataStream::Version
*/
#define QDataStream_Qt_1_0                                           1
#define QDataStream_Qt_2_0                                           2
#define QDataStream_Qt_2_1                                           3
#define QDataStream_Qt_3_0                                           4
#define QDataStream_Qt_3_1                                           5
#define QDataStream_Qt_3_3                                           6
#define QDataStream_Qt_4_0                                           7
#define QDataStream_Qt_4_1                                           QDataStream_Qt_4_0
#define QDataStream_Qt_4_2                                           8
#define QDataStream_Qt_4_3                                           9
#define QDataStream_Qt_4_4                                           10
#define QDataStream_Qt_4_5                                           11
#define QDataStream_Qt_4_6                                           12
#define QDataStream_Qt_4_7                                           QDataStream_Qt_4_6
#define QDataStream_Qt_4_8                                           QDataStream_Qt_4_7

#endif /* QDATASTREAM_CH */
