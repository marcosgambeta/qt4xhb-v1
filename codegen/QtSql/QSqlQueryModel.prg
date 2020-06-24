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

$beginClassFrom=QAbstractTableModel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtSql/QSqlError>
#include <QtSql/QSqlQuery>
#include <QtSql/QSqlRecord>

$prototype=QSqlQueryModel ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=virtual void clear()

$prototypeV2=QSqlError lastError() const

$prototypeV2=QSqlQuery query() const

$prototype=QSqlRecord record ( int row ) const
$internalMethod=|QSqlRecord|record,record1|int

$prototype=QSqlRecord record () const
$internalMethod=|QSqlRecord|record,record2|

/*
[1]QSqlRecord record ( int row ) const
[2]QSqlRecord record () const
*/

HB_FUNC_STATIC( QSQLQUERYMODEL_RECORD )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQueryModel_record1();
  }
  else if( ISNUMPAR(0) )
  {
    QSqlQueryModel_record2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=record

$prototype=void setQuery ( const QSqlQuery & query )
$internalMethod=|void|setQuery,setQuery1|const QSqlQuery &

$prototype=void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )
$internalMethod=|void|setQuery,setQuery2|const QString &,const QSqlDatabase &=QSqlDatabase()

/*
[1]void setQuery ( const QSqlQuery & query )
[2]void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )
*/

HB_FUNC_STATIC( QSQLQUERYMODEL_SETQUERY )
{
  if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    QSqlQueryModel_setQuery1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    QSqlQueryModel_setQuery2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setQuery

$prototypeV2=virtual bool canFetchMore( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual int columnCount( const QModelIndex & index = QModelIndex() ) const

$prototypeV2=virtual QVariant data( const QModelIndex & item, int role = Qt::DisplayRole ) const

$prototypeV2=virtual void fetchMore( const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const

$prototypeV2=virtual bool insertColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual int rowCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual bool setHeaderData( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )

#pragma ENDDUMP
