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

$prototypeV2=int fieldIndex( const QString & fieldName ) const

$prototypeV2=QString filter() const

$prototypeV2=bool insertRecord( int row, const QSqlRecord & record )

$prototypeV2=bool isDirty( const QModelIndex & index ) const

$prototypeV2=QSqlIndex primaryKey() const

$prototypeV2=virtual void revertRow( int row )

$prototypeV2=virtual bool select()

$prototypeV2=virtual void setEditStrategy( QSqlTableModel::EditStrategy strategy )

$prototypeV2=virtual void setFilter( const QString & filter )

$prototypeV2=bool setRecord( int row, const QSqlRecord & record )

$prototypeV2=virtual void setSort( int column, Qt::SortOrder order )

$prototypeV2=virtual void setTable( const QString & tableName )

$prototypeV2=QString tableName() const

$prototypeV2=virtual void clear()

$prototypeV2=virtual QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const

$prototypeV2=virtual Qt::ItemFlags flags( const QModelIndex & index ) const

$prototypeV2=virtual QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const

$prototypeV2=virtual bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual int rowCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual bool setData( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )

$prototypeV2=virtual void sort( int column, Qt::SortOrder order )

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
