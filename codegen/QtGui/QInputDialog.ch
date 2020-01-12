%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QInputDialog::InputDialogOption
flags QInputDialog::InputDialogOptions
*/
#define QInputDialog_NoButtons                                       0x00000001
#define QInputDialog_UseListViewForComboBoxItems                     0x00000002

/*
enum QInputDialog::InputMode
*/
#define QInputDialog_TextInput                                       0
#define QInputDialog_IntInput                                        1
#define QInputDialog_DoubleInput                                     2
