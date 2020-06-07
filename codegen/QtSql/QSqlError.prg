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

$prototype=QSqlError ( const QString & driverText = QString(), const QString & databaseText = QString(), ErrorType type = NoError, int number = -1 )
$internalConstructor=|new1|const QString &=QString(),const QString &=QString(),QSqlError::ErrorType=QSqlError::NoError,int=-1

$prototype=QSqlError ( const QSqlError & other )
$internalConstructor=|new2|const QSqlError &

/*
[1]QSqlError ( const QString & driverText = QString(), const QString & databaseText = QString(), ErrorType type = NoError, int number = -1 )
[2]QSqlError ( const QSqlError & other )
*/

HB_FUNC_STATIC( QSQLERROR_NEW )
{
  if( ISBETWEEN(0,4) && (ISCHAR(1)||ISNIL(1)) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QSqlError_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLERROR(1) )
  {
    QSqlError_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QString databaseText() const

$prototypeV2=QString driverText() const

$prototypeV2=bool isValid() const

$prototypeV2=int number() const

$prototype=void setDatabaseText ( const QString & databaseText )
$method=|void|setDatabaseText|const QString &

$prototype=void setDriverText ( const QString & driverText )
$method=|void|setDriverText|const QString &

$prototype=void setNumber ( int number )
$method=|void|setNumber|int

$prototype=void setType ( ErrorType type )
$method=|void|setType|QSqlError::ErrorType

$prototypeV2=QString text() const

$prototype=ErrorType type () const
$method=|QSqlError::ErrorType|type|

$extraMethods

#pragma ENDDUMP
