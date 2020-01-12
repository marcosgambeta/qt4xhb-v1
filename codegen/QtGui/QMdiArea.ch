%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QMdiArea::AreaOption
flags QMdiArea::AreaOptions
*/
#define QMdiArea_DontMaximizeSubWindowOnActivation                   0x1

/*
enum QMdiArea::ViewMode
*/
#define QMdiArea_SubWindowView                                       0
#define QMdiArea_TabbedView                                          1

/*
enum QMdiArea::WindowOrder
*/
#define QMdiArea_CreationOrder                                       0
#define QMdiArea_StackingOrder                                       1
#define QMdiArea_ActivationHistoryOrder                              2
