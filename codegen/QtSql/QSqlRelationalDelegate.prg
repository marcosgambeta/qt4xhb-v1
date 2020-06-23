%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtSql

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QItemDelegate

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSqlRelationalDelegate ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=virtual QWidget * createEditor( QWidget * parent, const QStyleOptionViewItem & option, const QModelIndex & index ) const

$prototypeV2=virtual void setEditorData( QWidget * editor, const QModelIndex & index ) const

$prototypeV2=virtual void setModelData( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const

#pragma ENDDUMP
