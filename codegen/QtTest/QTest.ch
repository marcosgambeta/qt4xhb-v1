%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QTest::AttributeIndex
*/
#define QTest_AI_Undefined                                           -1
#define QTest_AI_Name                                                0
#define QTest_AI_Result                                              1
#define QTest_AI_Tests                                               2
#define QTest_AI_Failures                                            3
#define QTest_AI_Errors                                              4
#define QTest_AI_Type                                                5
#define QTest_AI_Description                                         6
#define QTest_AI_PropertyValue                                       7
#define QTest_AI_QTestVersion                                        8
#define QTest_AI_QtVersion                                           9
#define QTest_AI_File                                                10
#define QTest_AI_Line                                                11
#define QTest_AI_Metric                                              12
#define QTest_AI_Tag                                                 13
#define QTest_AI_Value                                               14
#define QTest_AI_Iterations                                          15

/*
enum QTest::KeyAction
*/
#define QTest_Press                                                  0
#define QTest_Release                                                1
#define QTest_Click                                                  2

/*
enum QTest::LogElementType
*/
#define QTest_LET_Undefined                                          -1
#define QTest_LET_Property                                           0
#define QTest_LET_Properties                                         1
#define QTest_LET_Failure                                            2
#define QTest_LET_Error                                              3
#define QTest_LET_TestCase                                           4
#define QTest_LET_TestSuite                                          5
#define QTest_LET_Benchmark                                          6
#define QTest_LET_SystemError                                        7

/*
enum QTest::MouseAction
*/
#define QTest_MousePress                                             0
#define QTest_MouseRelease                                           1
#define QTest_MouseClick                                             2
#define QTest_MouseDClick                                            3
#define QTest_MouseMove                                              4

/*
enum QTest::QBenchmarkMetric
*/
#define QTest_FramesPerSecond                                        0
#define QTest_BitsPerSecond                                          1
#define QTest_BytesPerSecond                                         2
#define QTest_WalltimeMilliseconds                                   3
#define QTest_CPUTicks                                               4
#define QTest_InstructionReads                                       5
#define QTest_Events                                                 6

/*
enum QTest::SkipMode
*/
#define QTest_SkipSingle                                             1
#define QTest_SkipAll                                                2

/*
enum QTest::TestFailMode
*/
#define QTest_Abort                                                  1
#define QTest_Continue                                               2
