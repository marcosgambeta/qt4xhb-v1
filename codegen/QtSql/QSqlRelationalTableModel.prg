%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLRELATION
REQUEST QSQLTABLEMODEL
REQUEST QVARIANT
#endif

$beginClassFrom=QSqlTableModel

   METHOD new
   METHOD delete
   METHOD relation
   METHOD relationModel
   METHOD setRelation
   METHOD clear
   METHOD data
   METHOD removeColumns
   METHOD select
   METHOD setData
   METHOD setTable
   METHOD revertRow

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

$prototype=virtual void clear ()
$virtualMethod=|void|clear|

$prototype=virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool select ()
$virtualMethod=|bool|select|

$prototype=virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=virtual void setTable ( const QString & table )
$virtualMethod=|void|setTable|const QString &

$prototype=virtual void revertRow ( int row )
$virtualMethod=|void|revertRow|int

#pragma ENDDUMP
