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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>
#include <QtSql/QSqlError>
#include <QtSql/QSqlRecord>
#include <QtSql/QSqlDriver>

$prototype=QSqlQuery ( QSqlResult * result )
$internalConstructor=|new1|QSqlResult *

$prototype=QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
$internalConstructor=|new2|const QString &=QString(),QSqlDatabase=QSqlDatabase()

$prototype=QSqlQuery ( QSqlDatabase db )
$internalConstructor=|new3|QSqlDatabase

$prototype=QSqlQuery ( const QSqlQuery & other )
$internalConstructor=|new4|const QSqlQuery &

/*
[1]QSqlQuery ( QSqlResult * result )
[2]QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
[3]QSqlQuery ( QSqlDatabase db )
[4]QSqlQuery ( const QSqlQuery & other )
*/

HB_FUNC_STATIC( QSQLQUERY_NEW )
{
  if( ISNUMPAR(1) && ISQSQLRESULT(1) )
  {
    QSqlQuery_new1();
  }
  else if( ISBETWEEN(0,2) && (ISCHAR(1)||ISNIL(1)) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    QSqlQuery_new2();
  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    QSqlQuery_new3();
  }
  else if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    QSqlQuery_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void addBindValue ( const QVariant & val, QSql::ParamType paramType = QSql::In )
$method=|void|addBindValue|const QVariant &,QSql::ParamType=QSql::In

$prototypeV2=int at() const

$prototype=void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
$internalMethod=|void|bindValue,bindValue1|const QString &,const QVariant &,QSql::ParamType=QSql::In

$prototype=void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
$internalMethod=|void|bindValue,bindValue2|int,const QVariant &,QSql::ParamType=QSql::In

/*
[1]void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
[2]void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/

HB_FUNC_STATIC( QSQLQUERY_BINDVALUE )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISQVARIANT(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QSqlQuery_bindValue1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQVARIANT(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QSqlQuery_bindValue2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=bindValue

$prototype=QVariant boundValue ( const QString & placeholder ) const
$internalMethod=|QVariant|boundValue,boundValue1|const QString &

$prototype=QVariant boundValue ( int pos ) const
$internalMethod=|QVariant|boundValue,boundValue2|int

/*
[1]QVariant boundValue ( const QString & placeholder ) const
[2]QVariant boundValue ( int pos ) const
*/

HB_FUNC_STATIC( QSQLQUERY_BOUNDVALUE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_boundValue1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQuery_boundValue2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=boundValue

$prototypeV2=void clear()

$prototypeV2=const QSqlDriver * driver() const

$prototype=bool exec ( const QString & query )
$internalMethod=|bool|exec,exec1|const QString &

$prototype=bool exec ()
$internalMethod=|bool|exec,exec2|

/*
[1]bool exec ( const QString & query )
[2]bool exec ()
*/

HB_FUNC_STATIC( QSQLQUERY_EXEC )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_exec1();
  }
  else if( ISNUMPAR(0) )
  {
    QSqlQuery_exec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=exec

$prototype=bool execBatch ( BatchExecutionMode mode = ValuesAsRows )
$method=|bool|execBatch|QSqlQuery::BatchExecutionMode=QSqlQuery::ValuesAsRows

$prototypeV2=QString executedQuery() const

$prototypeV2=void finish()

$prototypeV2=bool first()

$prototypeV2=bool isActive() const

$prototypeV2=bool isForwardOnly() const

$prototypeV2=bool isNull( int field ) const

$prototypeV2=bool isSelect() const

$prototypeV2=bool isValid() const

$prototypeV2=bool last()

$prototypeV2=QSqlError lastError() const

$prototypeV2=QVariant lastInsertId() const

$prototypeV2=QString lastQuery() const

$prototypeV2=bool next()

$prototypeV2=bool nextResult()

$prototypeV2=int numRowsAffected() const

$prototypeV2=QSql::NumericalPrecisionPolicy numericalPrecisionPolicy() const

$prototypeV2=bool prepare( const QString & query )

$prototypeV2=bool previous()

$prototypeV2=QSqlRecord record() const

$prototypeV2=const QSqlResult * result() const

$prototype=bool seek ( int index, bool relative = false )
$method=|bool|seek|int,bool=false

$prototypeV2=void setForwardOnly( bool forward )

$prototypeV2=void setNumericalPrecisionPolicy( QSql::NumericalPrecisionPolicy precisionPolicy )

$prototypeV2=int size() const

$prototypeV2=QVariant value( int index ) const

$extraMethods

#pragma ENDDUMP
