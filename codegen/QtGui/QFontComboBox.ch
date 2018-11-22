%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QFontComboBox::FontFilter
flags QFontComboBox::FontFilters
*/
#define QFontComboBox_AllFonts                                       0
#define QFontComboBox_ScalableFonts                                  0x1
#define QFontComboBox_NonScalableFonts                               0x2
#define QFontComboBox_MonospacedFonts                                0x4
#define QFontComboBox_ProportionalFonts                              0x8
