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

$beginClassFrom=QSqlTableModel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSqlRelationalTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
$constructor=|new|QObject *=0,QSqlDatabase=QSqlDatabase()

$deleteMethod

$prototype=QSqlRelation relation ( int column ) const
$method=|QSqlRelation|relation|int

$prototype=virtual QSqlTableModel * relationModel ( int column ) const
$virtualMethod=|QSqlTableModel *|relationModel|int

$prototype=virtual void setRelation ( int column, const QSqlRelation & relation )
$virtualMethod=|void|setRelation|int,const QSqlRelation &

$prototypeV2=virtual void clear()

$prototype=virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototypeV2=virtual bool select()

$prototype=virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=virtual void setTable ( const QString & table )
$virtualMethod=|void|setTable|const QString &

$prototype=virtual void revertRow ( int row )
$virtualMethod=|void|revertRow|int

#pragma ENDDUMP
