%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QStyleHintReturn::HintReturnType
*/
#define QStyleHintReturn_SH_Default                                  0xf000
#define QStyleHintReturn_SH_Mask                                     ? //QStyle::SH_RubberBand_Mask QStyle::SH_FocusFrame_Mask
#define QStyleHintReturn_SH_Variant                                  ? //QStyle::SH_TextControl_FocusIndicatorTextCharFormat

/*
enum QStyleHintReturn::StyleOptionType
*/
#define QStyleHintReturn_Type                                        QStyleHintReturn_SH_Default

/*
enum QStyleHintReturn::StyleOptionVersion
*/
#define QStyleHintReturn_Version                                     1
