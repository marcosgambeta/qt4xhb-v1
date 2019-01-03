%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QFileSystemModel::Roles
*/
#define QFileSystemModel_FileIconRole                                Qt_DecorationRole
#define QFileSystemModel_FilePathRole                                Qt_UserRole + 1
#define QFileSystemModel_FileNameRole                                Qt_UserRole + 2
#define QFileSystemModel_FilePermissions                             Qt_UserRole + 3
