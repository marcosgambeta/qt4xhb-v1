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

#include <QtSql/QSqlQuery>
#include <QtSql/QSqlError>
#include <QtCore/QStringList>
#include <QtSql/QSqlIndex>
#include <QtSql/QSqlRecord>
#include <QtSql/QSqlDriver>

$prototype=QSqlDatabase ()
$internalConstructor=|new1|

$prototype=QSqlDatabase ( const QSqlDatabase & other )
$internalConstructor=|new2|const QSqlDatabase &

/*
[1]QSqlDatabase ()
[2]QSqlDatabase ( const QSqlDatabase & other )
*/

HB_FUNC_STATIC( QSQLDATABASE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSqlDatabase_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    QSqlDatabase_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=void close()

$prototypeV2=bool commit()

$prototypeV2=QString connectOptions() const

$prototypeV2=QString connectionName() const

$prototypeV2=QString databaseName() const

$prototypeV2=QSqlDriver * driver() const

$prototypeV2=QString driverName() const

$prototypeV2=QSqlQuery exec( const QString & query = QString() ) const

$prototypeV2=QString hostName() const

$prototypeV2=bool isOpen() const

$prototypeV2=bool isOpenError() const

$prototypeV2=bool isValid() const

$prototypeV2=QSqlError lastError() const

$prototypeV2=QSql::NumericalPrecisionPolicy numericalPrecisionPolicy() const

$prototype=bool open ()
$internalMethod=|bool|open,open1|

$prototype=bool open ( const QString & user, const QString & password )
$internalMethod=|bool|open,open2|const QString &,const QString &

/*
[1]bool open ()
[2]bool open ( const QString & user, const QString & password )
*/

HB_FUNC_STATIC( QSQLDATABASE_OPEN )
{
  if( ISNUMPAR(0) )
  {
    QSqlDatabase_open1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QSqlDatabase_open2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=open

$prototypeV2=QString password() const

$prototypeV2=int port() const

$prototypeV2=QSqlIndex primaryIndex( const QString & tablename ) const

$prototypeV2=QSqlRecord record( const QString & tablename ) const

$prototypeV2=bool rollback()

$prototypeV2=void setConnectOptions( const QString & options = QString() )

$prototypeV2=void setDatabaseName( const QString & name )

$prototypeV2=void setHostName( const QString & host )

$prototypeV2=void setNumericalPrecisionPolicy( QSql::NumericalPrecisionPolicy precisionPolicy )

$prototypeV2=void setPassword( const QString & password )

$prototypeV2=void setPort( int port )

$prototypeV2=void setUserName( const QString & name )

$prototypeV2=QStringList tables( QSql::TableType type = QSql::Tables ) const

$prototypeV2=bool transaction()

$prototypeV2=QString userName() const

$prototype=static QSqlDatabase addDatabase ( const QString & type, const QString & connectionName = QLatin1String( defaultConnection ) )
$internalStaticMethod=|QSqlDatabase|addDatabase,addDatabase1|const QString &,const QString &=QLatin1String( QSqlDatabase::defaultConnection )

$prototype=static QSqlDatabase addDatabase ( QSqlDriver * driver, const QString & connectionName = QLatin1String( defaultConnection ) )
$internalStaticMethod=|QSqlDatabase|addDatabase,addDatabase2|QSqlDriver *,const QString &=QLatin1String( QSqlDatabase::defaultConnection )

/*
[1]QSqlDatabase addDatabase ( const QString & type, const QString & connectionName = QLatin1String( defaultConnection ) )
[2]QSqlDatabase addDatabase ( QSqlDriver * driver, const QString & connectionName = QLatin1String( defaultConnection ) )
*/

HB_FUNC_STATIC( QSQLDATABASE_ADDDATABASE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QSqlDatabase_addDatabase1();
  }
  else if( ISBETWEEN(1,2) && ISQSQLDRIVER(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QSqlDatabase_addDatabase2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addDatabase

$prototypeV2=static QSqlDatabase cloneDatabase( const QSqlDatabase & other, const QString & connectionName )

$prototypeV2=static QStringList connectionNames()

$prototypeV2=static bool contains( const QString & connectionName = QLatin1String( QSqlDatabase::defaultConnection ) )

$prototypeV2=static QSqlDatabase database( const QString & connectionName = QLatin1String( QSqlDatabase::defaultConnection ), bool open = true )

$prototypeV2=static QStringList drivers()

$prototypeV2=static bool isDriverAvailable( const QString & name )

$prototypeV2=static void registerSqlDriver( const QString & name, QSqlDriverCreatorBase * creator )

$prototypeV2=static void removeDatabase( const QString & connectionName )

$extraMethods

#pragma ENDDUMP
