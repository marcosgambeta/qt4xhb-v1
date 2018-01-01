/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QPRINTER_CH
#define QPRINTER_CH

/*
enum QPrinter::ColorMode
*/
#define QPrinter_Color                                               1
#define QPrinter_GrayScale                                           0

/*
enum QPrinter::DuplexMode
*/
#define QPrinter_DuplexNone                                          0
#define QPrinter_DuplexAuto                                          1
#define QPrinter_DuplexLongSide                                      2
#define QPrinter_DuplexShortSide                                     3

/*
enum QPrinter::Orientation
*/
#define QPrinter_Portrait                                            0
#define QPrinter_Landscape                                           1

/*
enum QPrinter::OutputFormat
*/
#define QPrinter_NativeFormat                                        0
#define QPrinter_PdfFormat                                           1
#define QPrinter_PostScriptFormat                                    2

/*
enum QPrinter::PageOrder
*/
#define QPrinter_FirstPageFirst                                      0
#define QPrinter_LastPageFirst                                       1

/*
enum QPrinter::PaperSize
*/
#define QPrinter_A0                                                  5
#define QPrinter_A1                                                  6
#define QPrinter_A2                                                  7
#define QPrinter_A3                                                  8
#define QPrinter_A4                                                  0
#define QPrinter_A5                                                  9
#define QPrinter_A6                                                  10
#define QPrinter_A7                                                  11
#define QPrinter_A8                                                  12
#define QPrinter_A9                                                  13
#define QPrinter_B0                                                  14
#define QPrinter_B1                                                  15
#define QPrinter_B2                                                  17
#define QPrinter_B3                                                  18
#define QPrinter_B4                                                  19
#define QPrinter_B5                                                  1
#define QPrinter_B6                                                  20
#define QPrinter_B7                                                  21
#define QPrinter_B8                                                  22
#define QPrinter_B9                                                  23
#define QPrinter_B10                                                 16
#define QPrinter_C5E                                                 24
#define QPrinter_Comm10E                                             25
#define QPrinter_DLE                                                 26
#define QPrinter_Executive                                           4
#define QPrinter_Folio                                               27
#define QPrinter_Ledger                                              28
#define QPrinter_Legal                                               3
#define QPrinter_Letter                                              2
#define QPrinter_Tabloid                                             29
#define QPrinter_Custom                                              30

/*
enum QPrinter::PaperSource
*/
#define QPrinter_Auto                                                6
#define QPrinter_Cassette                                            11
#define QPrinter_Envelope                                            4
#define QPrinter_EnvelopeManual                                      5
#define QPrinter_FormSource                                          12
#define QPrinter_LargeCapacity                                       10
#define QPrinter_LargeFormat                                         9
#define QPrinter_Lower                                               1
#define QPrinter_MaxPageSource                                       13
#define QPrinter_Middle                                              2
#define QPrinter_Manual                                              3
#define QPrinter_OnlyOne                                             0
#define QPrinter_Tractor                                             7
#define QPrinter_SmallFormat                                         8

/*
enum QPrinter::PrintRange
*/
#define QPrinter_AllPages                                            0
#define QPrinter_Selection                                           1
#define QPrinter_PageRange                                           2
#define QPrinter_CurrentPage                                         3

/*
enum QPrinter::PrinterMode
*/
#define QPrinter_ScreenResolution                                    0
#define QPrinter_PrinterResolution                                   1
#define QPrinter_HighResolution                                      2

/*
enum QPrinter::PrinterState
*/
#define QPrinter_Idle                                                0
#define QPrinter_Active                                              1
#define QPrinter_Aborted                                             2
#define QPrinter_Error                                               3

/*
enum QPrinter::Unit
*/
#define QPrinter_Millimeter                                          0
#define QPrinter_Point                                               1
#define QPrinter_Inch                                                2
#define QPrinter_Pica                                                3
#define QPrinter_Didot                                               4
#define QPrinter_Cicero                                              5
#define QPrinter_DevicePixel                                         6

#endif /* QPRINTER_CH */
