%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

/*
enum QTextBoundaryFinder::BoundaryType
*/
#define QTextBoundaryFinder_Grapheme                                 0
#define QTextBoundaryFinder_Word                                     1
#define QTextBoundaryFinder_Line                                     2
#define QTextBoundaryFinder_Sentence                                 3

/*
enum QTextBoundaryFinder::BoundaryReason
*/
#define QTextBoundaryFinder_NotAtBoundary                            0
#define QTextBoundaryFinder_StartWord                                1
#define QTextBoundaryFinder_EndWord                                  2
//Hyphen
