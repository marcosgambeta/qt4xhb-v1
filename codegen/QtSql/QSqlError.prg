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

$prototypeV2=void setDatabaseText( const QString & databaseText )

$prototypeV2=void setDriverText( const QString & driverText )

$prototypeV2=void setNumber( int number )

$prototypeV2=void setType( QSqlError::ErrorType type )

$prototypeV2=QString text() const

$prototypeV2=QSqlError::ErrorType type() const

$extraMethods

#pragma ENDDUMP
