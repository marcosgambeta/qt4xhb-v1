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

$prototype=QSqlQuery exec ( const QString & query = QString() ) const
$method=|QSqlQuery|exec|const QString &=QString()

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

$prototype=void setConnectOptions ( const QString & options = QString() )
$method=|void|setConnectOptions|const QString &=QString()

$prototypeV2=void setDatabaseName( const QString & name )

$prototypeV2=void setHostName( const QString & host )

$prototypeV2=void setNumericalPrecisionPolicy( QSql::NumericalPrecisionPolicy precisionPolicy )

$prototypeV2=void setPassword( const QString & password )

$prototypeV2=void setPort( int port )

$prototypeV2=void setUserName( const QString & name )

$prototype=QStringList tables ( QSql::TableType type = QSql::Tables ) const
$method=|QStringList|tables|QSql::TableType=QSql::Tables

$prototypeV2=bool transaction()

$prototypeV2=QString userName() const

$prototype=static QSqlDatabase addDatabase ( const QString & type, const QString & connectionName = QLatin1String( defaultConnection ) )
$internalStaticMethod=|QSqlDatabase|addDatabase,addDatabase1|const QString &,const QString &=QLatin1String( QSqlDatabase::defaultConnection )
%% void QSqlDatabase_addDatabase1 ()
%% {
%%   QString par2; // TODO: revisar
%%   if( ISNIL(2) )
%%   {
%%     par2 = QLatin1String(QSqlDatabase::defaultConnection);
%%   }
%%   else
%%   {
%%     par2 = hb_parc(2);
%%   }
%%   QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase ( PQSTRING(1), par2 ) );
%%   PHB_DYNS pDynSym = hb_dynsymFindName( "QSQLDATABASE" );
%%   if( pDynSym )
%%   {
%%     hb_vmPushDynSym( pDynSym );
%%     hb_vmPushNil();
%%     hb_vmDo( 0 );
%%     PHB_ITEM pObject = hb_itemNew( NULL );
%%     hb_itemCopy( pObject, hb_stackReturnItem() );
%%     PHB_ITEM pItem = hb_itemNew( NULL );
%%     hb_itemPutPtr( pItem, (QSqlDatabase *) ptr );
%%     hb_objSendMsg( pObject, "NEWFROMPOINTER", 1, pItem );
%%     hb_itemReturn( pObject );
%%     hb_itemRelease( pObject );
%%     hb_itemRelease( pItem );
%%   }
%% }

$prototype=static QSqlDatabase addDatabase ( QSqlDriver * driver, const QString & connectionName = QLatin1String( defaultConnection ) )
$internalStaticMethod=|QSqlDatabase|addDatabase,addDatabase2|QSqlDriver *,const QString &=QLatin1String( QSqlDatabase::defaultConnection )
%% void QSqlDatabase_addDatabase2 ()
%% {
%%   QSqlDriver * par1 = (QSqlDriver *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
%%   QString par2; // TODO: revisar
%%   if( ISNIL(2) )
%%   {
%%     par2 = QLatin1String(QSqlDatabase::defaultConnection);
%%   }
%%   else
%%   {
%%     par2 = hb_parc(2);
%%   }
%%   QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase ( par1, par2 ) );
%%   PHB_DYNS pDynSym = hb_dynsymFindName( "QSQLDATABASE" );
%%   if( pDynSym )
%%   {
%%     hb_vmPushDynSym( pDynSym );
%%     hb_vmPushNil();
%%     hb_vmDo( 0 );
%%     PHB_ITEM pObject = hb_itemNew( NULL );
%%     hb_itemCopy( pObject, hb_stackReturnItem() );
%%     PHB_ITEM pItem = hb_itemNew( NULL );
%%     hb_itemPutPtr( pItem, (QSqlDatabase *) ptr );
%%     hb_objSendMsg( pObject, "NEWFROMPOINTER", 1, pItem );
%%     hb_itemReturn( pObject );
%%     hb_itemRelease( pObject );
%%     hb_itemRelease( pItem );
%%   }
%% }

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

$prototype=static bool contains ( const QString & connectionName = QLatin1String( defaultConnection ) )
$staticMethod=|bool|contains|const QString &=QLatin1String( QSqlDatabase::defaultConnection )
%% HB_FUNC_STATIC( QSQLDATABASE_CONTAINS )
%% {
%%   QString par1; // TODO: revisar
%%   if( ISNIL(1) )
%%   {
%%     par1 = QLatin1String(QSqlDatabase::defaultConnection);
%%   }
%%   else
%%   {
%%     par1 = hb_parc(1);
%%   }
%%   RBOOL( QSqlDatabase::contains ( par1 ) );
%% }

$prototype=static QSqlDatabase database ( const QString & connectionName = QLatin1String( defaultConnection ), bool open = true )
$staticMethod=|QSqlDatabase|database|const QString &=QLatin1String( QSqlDatabase::defaultConnection ),bool=true
%% HB_FUNC_STATIC( QSQLDATABASE_DATABASE )
%% {
%%   QString par1; // TODO: revisar
%%   if( ISNIL(1) )
%%   {
%%     par1 = QLatin1String(QSqlDatabase::defaultConnection);
%%   }
%%   else
%%   {
%%     par1 = hb_parc(1);
%%   }
%%   QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::database ( par1, OPBOOL(2,true) ) );
%%   PHB_DYNS pDynSym = hb_dynsymFindName( "QSQLDATABASE" );
%%   if( pDynSym )
%%   {
%%     hb_vmPushDynSym( pDynSym );
%%     hb_vmPushNil();
%%     hb_vmDo( 0 );
%%     PHB_ITEM pObject = hb_itemNew( NULL );
%%     hb_itemCopy( pObject, hb_stackReturnItem() );
%%     PHB_ITEM pItem = hb_itemNew( NULL );
%%     hb_itemPutPtr( pItem, (QSqlDatabase *) ptr );
%%     hb_objSendMsg( pObject, "NEWFROMPOINTER", 1, pItem );
%%     hb_itemReturn( pObject );
%%     hb_itemRelease( pObject );
%%     hb_itemRelease( pItem );
%%   }
%% }

$prototypeV2=static QStringList drivers()

$prototypeV2=static bool isDriverAvailable( const QString & name )

$prototypeV2=static void registerSqlDriver( const QString & name, QSqlDriverCreatorBase * creator )

$prototypeV2=static void removeDatabase( const QString & connectionName )

$extraMethods

#pragma ENDDUMP
