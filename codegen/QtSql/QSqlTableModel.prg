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

#include <QSqlTableModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSqlIndex>

/*
QSqlTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
*/
$constructor=|new|QObject *=0,QSqlDatabase=QSqlDatabase()

$deleteMethod

/*
QSqlDatabase database () const
*/
$method=|QSqlDatabase|database|

/*
EditStrategy editStrategy () const
*/
$method=|QSqlTableModel::EditStrategy|editStrategy|

/*
int fieldIndex ( const QString & fieldName ) const
*/
$method=|int|fieldIndex|const QString &

/*
QString filter () const
*/
$method=|QString|filter|

/*
bool insertRecord ( int row, const QSqlRecord & record )
*/
$method=|bool|insertRecord|int,const QSqlRecord &

/*
bool isDirty ( const QModelIndex & index ) const
*/
$method=|bool|isDirty|const QModelIndex &

/*
QSqlIndex primaryKey () const
*/
$method=|QSqlIndex|primaryKey|

/*
virtual void revertRow ( int row )
*/
$virtualMethod=|void|revertRow|int

/*
virtual bool select ()
*/
$virtualMethod=|bool|select|

/*
virtual void setEditStrategy ( EditStrategy strategy )
*/
$virtualMethod=|void|setEditStrategy|QSqlTableModel::EditStrategy

/*
virtual void setFilter ( const QString & filter )
*/
$virtualMethod=|void|setFilter|const QString &

/*
bool setRecord ( int row, const QSqlRecord & record )
*/
$method=|bool|setRecord|int,const QSqlRecord &

/*
virtual void setSort ( int column, Qt::SortOrder order )
*/
$virtualMethod=|void|setSort|int,Qt::SortOrder

/*
virtual void setTable ( const QString & tableName )
*/
$virtualMethod=|void|setTable|const QString &

/*
QString tableName () const
*/
$method=|QString|tableName|

/*
virtual void clear ()
*/
$virtualMethod=|void|clear|

/*
virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
$virtualMethod=|Qt::ItemFlags|flags|const QModelIndex &

/*
virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
$virtualMethod=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

/*
virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
$virtualMethod=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

/*
virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
$virtualMethod=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

/*
virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
$virtualMethod=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

/*
virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
virtual void sort ( int column, Qt::SortOrder order )
*/
$virtualMethod=|void|sort|int,Qt::SortOrder

/*
virtual void revert ()
*/
$virtualMethod=|void|revert|

/*
void revertAll ()
*/
$method=|void|revertAll|

/*
virtual bool submit ()
*/
$virtualMethod=|bool|submit|

/*
bool submitAll ()
*/
$method=|bool|submitAll|

#pragma ENDDUMP
