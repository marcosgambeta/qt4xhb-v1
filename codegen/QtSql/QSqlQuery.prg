%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QSQLDRIVER
REQUEST QSQLERROR
REQUEST QSQLRECORD
REQUEST QSQLRESULT
#endif

CLASS QSqlQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addBindValue
   METHOD at
   METHOD bindValue
   METHOD boundValue
   METHOD clear
   METHOD driver
   METHOD exec
   METHOD execBatch
   METHOD executedQuery
   METHOD finish
   METHOD first
   METHOD isActive
   METHOD isForwardOnly
   METHOD isNull
   METHOD isSelect
   METHOD isValid
   METHOD last
   METHOD lastError
   METHOD lastInsertId
   METHOD lastQuery
   METHOD next
   METHOD nextResult
   METHOD numRowsAffected
   METHOD numericalPrecisionPolicy
   METHOD prepare
   METHOD previous
   METHOD record
   METHOD result
   METHOD seek
   METHOD setForwardOnly
   METHOD setNumericalPrecisionPolicy
   METHOD size
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlQuery>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>
#include <QSqlError>
#include <QSqlRecord>
#include <QSqlDriver>

$prototype=QSqlQuery ( QSqlResult * result )
$internalConstructor=|new1|QSqlResult *

$prototype=QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
$internalConstructor=|new2|const QString &=QString(),QSqlDatabase=QSqlDatabase()

$prototype=QSqlQuery ( QSqlDatabase db )
$internalConstructor=|new3|QSqlDatabase

$prototype=QSqlQuery ( const QSqlQuery & other )
$internalConstructor=|new4|const QSqlQuery &

//[1]QSqlQuery ( QSqlResult * result )
//[2]QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
//[3]QSqlQuery ( QSqlDatabase db )
//[4]QSqlQuery ( const QSqlQuery & other )

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

$deleteMethod

$prototype=void addBindValue ( const QVariant & val, QSql::ParamType paramType = QSql::In )
$method=|void|addBindValue|const QVariant &,QSql::ParamType=QSql::In

$prototype=int at () const
$method=|int|at|

$prototype=void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
$internalMethod=|void|bindValue,bindValue1|const QString &,const QVariant &,QSql::ParamType=QSql::In

$prototype=void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
$internalMethod=|void|bindValue,bindValue2|int,const QVariant &,QSql::ParamType=QSql::In

//[1]void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
//[2]void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )

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

$prototype=QVariant boundValue ( const QString & placeholder ) const
$internalMethod=|QVariant|boundValue,boundValue1|const QString &

$prototype=QVariant boundValue ( int pos ) const
$internalMethod=|QVariant|boundValue,boundValue2|int

//[1]QVariant boundValue ( const QString & placeholder ) const
//[2]QVariant boundValue ( int pos ) const

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

$prototype=void clear ()
$method=|void|clear|

$prototype=const QSqlDriver * driver () const
$method=|const QSqlDriver *|driver|

$prototype=bool exec ( const QString & query )
$internalMethod=|bool|exec,exec1|const QString &

$prototype=bool exec ()
$internalMethod=|bool|exec,exec2|

//[1]bool exec ( const QString & query )
//[2]bool exec ()

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

$prototype=bool execBatch ( BatchExecutionMode mode = ValuesAsRows )
$method=|bool|execBatch|QSqlQuery::BatchExecutionMode=QSqlQuery::ValuesAsRows

$prototype=QString executedQuery () const
$method=|QString|executedQuery|

$prototype=void finish ()
$method=|void|finish|

$prototype=bool first ()
$method=|bool|first|

$prototype=bool isActive () const
$method=|bool|isActive|

$prototype=bool isForwardOnly () const
$method=|bool|isForwardOnly|

$prototype=bool isNull ( int field ) const
$method=|bool|isNull|int

$prototype=bool isSelect () const
$method=|bool|isSelect|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=bool last ()
$method=|bool|last|

$prototype=QSqlError lastError () const
$method=|QSqlError|lastError|

$prototype=QVariant lastInsertId () const
$method=|QVariant|lastInsertId|

$prototype=QString lastQuery () const
$method=|QString|lastQuery|

$prototype=bool next ()
$method=|bool|next|

$prototype=bool nextResult ()
$method=|bool|nextResult|

$prototype=int numRowsAffected () const
$method=|int|numRowsAffected|

$prototype=QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
$method=|QSql::NumericalPrecisionPolicy|numericalPrecisionPolicy|

$prototype=bool prepare ( const QString & query )
$method=|bool|prepare|const QString &

$prototype=bool previous ()
$method=|bool|previous|

$prototype=QSqlRecord record () const
$method=|QSqlRecord|record|

$prototype=const QSqlResult * result () const
$method=|const QSqlResult *|result|

$prototype=bool seek ( int index, bool relative = false )
$method=|bool|seek|int,bool=false

$prototype=void setForwardOnly ( bool forward )
$method=|void|setForwardOnly|bool

$prototype=void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
$method=|void|setNumericalPrecisionPolicy|QSql::NumericalPrecisionPolicy

$prototype=int size () const
$method=|int|size|

$prototype=QVariant value ( int index ) const
$method=|QVariant|value|int

$extraMethods

#pragma ENDDUMP
