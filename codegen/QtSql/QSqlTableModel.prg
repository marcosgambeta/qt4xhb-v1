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

$beginClassFrom=QSqlQueryModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtSql/QSqlIndex>

$prototype=QSqlTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
$constructor=|new|QObject *=0,QSqlDatabase=QSqlDatabase()

$deleteMethod

$prototypeV2=QSqlDatabase database() const

$prototypeV2=QSqlTableModel::EditStrategy editStrategy() const

$prototype=int fieldIndex ( const QString & fieldName ) const
$method=|int|fieldIndex|const QString &

$prototypeV2=QString filter() const

$prototype=bool insertRecord ( int row, const QSqlRecord & record )
$method=|bool|insertRecord|int,const QSqlRecord &

$prototype=bool isDirty ( const QModelIndex & index ) const
$method=|bool|isDirty|const QModelIndex &

$prototypeV2=QSqlIndex primaryKey() const

$prototype=virtual void revertRow ( int row )
$virtualMethod=|void|revertRow|int

$prototypeV2=virtual bool select()

$prototype=virtual void setEditStrategy ( EditStrategy strategy )
$virtualMethod=|void|setEditStrategy|QSqlTableModel::EditStrategy

$prototype=virtual void setFilter ( const QString & filter )
$virtualMethod=|void|setFilter|const QString &

$prototype=bool setRecord ( int row, const QSqlRecord & record )
$method=|bool|setRecord|int,const QSqlRecord &

$prototype=virtual void setSort ( int column, Qt::SortOrder order )
$virtualMethod=|void|setSort|int,Qt::SortOrder

$prototype=virtual void setTable ( const QString & tableName )
$virtualMethod=|void|setTable|const QString &

$prototypeV2=QString tableName() const

$prototypeV2=virtual void clear()

$prototype=virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
$virtualMethod=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=virtual void sort ( int column, Qt::SortOrder order )
$virtualMethod=|void|sort|int,Qt::SortOrder

$prototypeV2=virtual void revert()

$prototypeV2=void revertAll()

$prototypeV2=virtual bool submit()

$prototypeV2=bool submitAll()

$beginSignals
$signal=|beforeDelete(int)
$signal=|beforeInsert(QSqlRecord)
$signal=|beforeUpdate(int,QSqlRecord)
$signal=|primeInsert(int,QSqlRecord)
$endSignals

#pragma ENDDUMP
