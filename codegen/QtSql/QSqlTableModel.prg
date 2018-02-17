%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLDATABASE
REQUEST QSQLINDEX
REQUEST QVARIANT
#endif

CLASS QSqlTableModel INHERIT QSqlQueryModel

   METHOD new
   METHOD delete
   METHOD database
   METHOD editStrategy
   METHOD fieldIndex
   METHOD filter
   METHOD insertRecord
   METHOD isDirty
   METHOD primaryKey
   METHOD revertRow
   METHOD select
   METHOD setEditStrategy
   METHOD setFilter
   METHOD setRecord
   METHOD setSort
   METHOD setTable
   METHOD tableName
   METHOD clear
   METHOD data
   METHOD flags
   METHOD headerData
   METHOD insertRows
   METHOD removeColumns
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD sort
   METHOD revert
   METHOD revertAll
   METHOD submit
   METHOD submitAll

   METHOD onBeforeDelete
   METHOD onBeforeInsert
   METHOD onBeforeUpdate
   METHOD onPrimeInsert

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QSqlIndex>

$prototype=QSqlTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
$constructor=|new|QObject *=0,QSqlDatabase=QSqlDatabase()

$deleteMethod

$prototype=QSqlDatabase database () const
$method=|QSqlDatabase|database|

$prototype=EditStrategy editStrategy () const
$method=|QSqlTableModel::EditStrategy|editStrategy|

$prototype=int fieldIndex ( const QString & fieldName ) const
$method=|int|fieldIndex|const QString &

$prototype=QString filter () const
$method=|QString|filter|

$prototype=bool insertRecord ( int row, const QSqlRecord & record )
$method=|bool|insertRecord|int,const QSqlRecord &

$prototype=bool isDirty ( const QModelIndex & index ) const
$method=|bool|isDirty|const QModelIndex &

$prototype=QSqlIndex primaryKey () const
$method=|QSqlIndex|primaryKey|

$prototype=virtual void revertRow ( int row )
$virtualMethod=|void|revertRow|int

$prototype=virtual bool select ()
$virtualMethod=|bool|select|

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

$prototype=QString tableName () const
$method=|QString|tableName|

$prototype=virtual void clear ()
$virtualMethod=|void|clear|

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

$prototype=virtual void revert ()
$virtualMethod=|void|revert|

$prototype=void revertAll ()
$method=|void|revertAll|

$prototype=virtual bool submit ()
$virtualMethod=|bool|submit|

$prototype=bool submitAll ()
$method=|bool|submitAll|

#pragma ENDDUMP
