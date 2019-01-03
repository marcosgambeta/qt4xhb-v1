%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QGradient::CoordinateMode
*/
#define QGradient_LogicalMode                                        0
#define QGradient_StretchToDeviceMode                                1
#define QGradient_ObjectBoundingMode                                 2

/*
enum QGradient::Spread
*/
#define QGradient_PadSpread                                          0
#define QGradient_RepeatSpread                                       2
#define QGradient_ReflectSpread                                      1

/*
enum QGradient::Type
*/
#define QGradient_LinearGradient                                     0
#define QGradient_RadialGradient                                     1
#define QGradient_ConicalGradient                                    2
#define QGradient_NoGradient                                         3
