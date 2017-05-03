/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLDRIVER
REQUEST QSQLQUERY
REQUEST QSQLERROR
REQUEST QSQLINDEX
REQUEST QSQLRECORD
REQUEST QSQLDATABASE
#endif

CLASS QSqlDatabase

   DATA pointer
   DATA class_id INIT Class_Id_QSqlDatabase
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD close
   METHOD commit
   METHOD connectOptions
   METHOD connectionName
   METHOD databaseName
   METHOD driver
   METHOD driverName
   METHOD exec
   METHOD hostName
   METHOD isOpen
   METHOD isOpenError
   METHOD isValid
   METHOD lastError
   METHOD numericalPrecisionPolicy
   METHOD open1
   METHOD open2
   METHOD open
   METHOD password
   METHOD port
   METHOD primaryIndex
   METHOD record
   METHOD rollback
   METHOD setConnectOptions
   METHOD setDatabaseName
   METHOD setHostName
   METHOD setNumericalPrecisionPolicy
   METHOD setPassword
   METHOD setPort
   METHOD setUserName
   METHOD tables
   METHOD transaction
   METHOD userName
   METHOD addDatabase1
   METHOD addDatabase2
   METHOD addDatabase
   METHOD cloneDatabase
   METHOD connectionNames
   METHOD contains
   METHOD database
   METHOD drivers
   METHOD isDriverAvailable
   METHOD registerSqlDriver
   METHOD removeDatabase
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSqlDatabase>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QSqlQuery>
#include <QSqlError>
#include <QStringList>
#include <QSqlIndex>
#include <QSqlRecord>

/*
QSqlDatabase ()
*/
HB_FUNC_STATIC( QSQLDATABASE_NEW1 )
{
  QSqlDatabase * o = NULL;
  o = new QSqlDatabase (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlDatabase *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QSqlDatabase ( const QSqlDatabase & other )
*/
HB_FUNC_STATIC( QSQLDATABASE_NEW2 )
{
  QSqlDatabase * o = NULL;
  QSqlDatabase * par1 = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSqlDatabase ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlDatabase *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QSqlDatabase ()
//[2]QSqlDatabase ( const QSqlDatabase & other )

HB_FUNC_STATIC( QSQLDATABASE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSQLDATABASE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    HB_FUNC_EXEC( QSQLDATABASE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLDATABASE_DELETE )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void close ()
*/
HB_FUNC_STATIC( QSQLDATABASE_CLOSE )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool commit ()
*/
HB_FUNC_STATIC( QSQLDATABASE_COMMIT )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->commit (  ) );
  }
}


/*
QString connectOptions () const
*/
HB_FUNC_STATIC( QSQLDATABASE_CONNECTOPTIONS )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->connectOptions (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString connectionName () const
*/
HB_FUNC_STATIC( QSQLDATABASE_CONNECTIONNAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->connectionName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString databaseName () const
*/
HB_FUNC_STATIC( QSQLDATABASE_DATABASENAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->databaseName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QSqlDriver * driver () const
*/
HB_FUNC_STATIC( QSQLDATABASE_DRIVER )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlDriver * ptr = obj->driver (  );
    _qt4xhb_createReturnClass ( ptr, "QSQLDRIVER" );
  }
}


/*
QString driverName () const
*/
HB_FUNC_STATIC( QSQLDATABASE_DRIVERNAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->driverName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QSqlQuery exec ( const QString & query = QString() ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_EXEC )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = ISNIL(1)? QString() : hb_parc(1);
    QSqlQuery * ptr = new QSqlQuery( obj->exec ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLQUERY", true );
  }
}


/*
QString hostName () const
*/
HB_FUNC_STATIC( QSQLDATABASE_HOSTNAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->hostName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool isOpen () const
*/
HB_FUNC_STATIC( QSQLDATABASE_ISOPEN )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isOpen (  ) );
  }
}


/*
bool isOpenError () const
*/
HB_FUNC_STATIC( QSQLDATABASE_ISOPENERROR )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isOpenError (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLDATABASE_ISVALID )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QSqlError lastError () const
*/
HB_FUNC_STATIC( QSQLDATABASE_LASTERROR )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlError * ptr = new QSqlError( obj->lastError (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLERROR", true );
  }
}


/*
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
*/
HB_FUNC_STATIC( QSQLDATABASE_NUMERICALPRECISIONPOLICY )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->numericalPrecisionPolicy (  ) );
  }
}


/*
bool open ()
*/
HB_FUNC_STATIC( QSQLDATABASE_OPEN1 )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->open (  ) );
  }
}


/*
bool open ( const QString & user, const QString & password )
*/
HB_FUNC_STATIC( QSQLDATABASE_OPEN2 )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->open ( PQSTRING(1), PQSTRING(2) ) );
  }
}


//[1]bool open ()
//[2]bool open ( const QString & user, const QString & password )

HB_FUNC_STATIC( QSQLDATABASE_OPEN )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSQLDATABASE_OPEN1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSQLDATABASE_OPEN2 );
  }
}

/*
QString password () const
*/
HB_FUNC_STATIC( QSQLDATABASE_PASSWORD )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->password (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int port () const
*/
HB_FUNC_STATIC( QSQLDATABASE_PORT )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->port (  ) );
  }
}


/*
QSqlIndex primaryIndex ( const QString & tablename ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_PRIMARYINDEX )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlIndex * ptr = new QSqlIndex( obj->primaryIndex ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLINDEX", true );
  }
}


/*
QSqlRecord record ( const QString & tablename ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_RECORD )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}


/*
bool rollback ()
*/
HB_FUNC_STATIC( QSQLDATABASE_ROLLBACK )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->rollback (  ) );
  }
}


/*
void setConnectOptions ( const QString & options = QString() )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETCONNECTOPTIONS )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = ISNIL(1)? QString() : hb_parc(1);
    obj->setConnectOptions ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDatabaseName ( const QString & name )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETDATABASENAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDatabaseName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHostName ( const QString & host )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETHOSTNAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHostName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETNUMERICALPRECISIONPOLICY )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNumericalPrecisionPolicy (  (QSql::NumericalPrecisionPolicy) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPassword ( const QString & password )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETPASSWORD )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPassword ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPort ( int port )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETPORT )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPort ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUserName ( const QString & name )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETUSERNAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUserName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList tables ( QSql::TableType type = QSql::Tables ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_TABLES )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->tables ( ISNIL(1)? QSql::Tables : (QSql::TableType) hb_parni(1) );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool transaction ()
*/
HB_FUNC_STATIC( QSQLDATABASE_TRANSACTION )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->transaction (  ) );
  }
}


/*
QString userName () const
*/
HB_FUNC_STATIC( QSQLDATABASE_USERNAME )
{
  QSqlDatabase * obj = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->userName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
  Static Public Members
*/



/*
QSqlDatabase addDatabase ( const QString & type, const QString & connectionName = QLatin1String( defaultConnection ) )
*/
HB_FUNC_STATIC( QSQLDATABASE_ADDDATABASE1 )
{
  QString par2;
  if( ISNIL(2) )
  {
    par2 = QLatin1String(QSqlDatabase::defaultConnection);
  }
  else
  {
    par2 = hb_parc(2);
  }
  QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase ( PQSTRING(1), par2 ) );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QSQLDATABASE" );
  #else
  pDynSym = hb_dynsymFindName( "QSQLDATABASE" );
  #endif
  if( pDynSym )
  {
    #ifdef __XHARBOUR__
    hb_vmPushSymbol( pDynSym->pSymbol );
    #else
    hb_vmPushDynSym( pDynSym );
    #endif
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QSqlDatabase *) ptr );
    hb_objSendMsg( pObject, "NEWFROMPOINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
}


/*
QSqlDatabase addDatabase ( QSqlDriver * driver, const QString & connectionName = QLatin1String( defaultConnection ) )
*/
HB_FUNC_STATIC( QSQLDATABASE_ADDDATABASE2 )
{
  QSqlDriver * par1 = (QSqlDriver *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2;
  if( ISNIL(2) )
  {
    par2 = QLatin1String(QSqlDatabase::defaultConnection);
  }
  else
  {
    par2 = hb_parc(2);
  }
  QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase ( par1, par2 ) );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QSQLDATABASE" );
  #else
  pDynSym = hb_dynsymFindName( "QSQLDATABASE" );
  #endif
  if( pDynSym )
  {
    #ifdef __XHARBOUR__
    hb_vmPushSymbol( pDynSym->pSymbol );
    #else
    hb_vmPushDynSym( pDynSym );
    #endif
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QSqlDatabase *) ptr );
    hb_objSendMsg( pObject, "NEWFROMPOINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
}

//[1]QSqlDatabase addDatabase ( const QString & type, const QString & connectionName = QLatin1String( defaultConnection ) )
//[2]QSqlDatabase addDatabase ( QSqlDriver * driver, const QString & connectionName = QLatin1String( defaultConnection ) )

HB_FUNC_STATIC( QSQLDATABASE_ADDDATABASE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSQLDATABASE_ADDDATABASE1 );
  }
  else if( ISBETWEEN(1,2) && ISQSQLDRIVER(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSQLDATABASE_ADDDATABASE2 );
  }
}

/*
QSqlDatabase cloneDatabase ( const QSqlDatabase & other, const QString & connectionName )
*/
HB_FUNC_STATIC( QSQLDATABASE_CLONEDATABASE )
{
  QSqlDatabase * par1 = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::cloneDatabase ( *par1, PQSTRING(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QSQLDATABASE" );
}


/*
QStringList connectionNames ()
*/
HB_FUNC_STATIC( QSQLDATABASE_CONNECTIONNAMES )
{
  QStringList strl = QSqlDatabase::connectionNames (  );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<strl.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}



/*
bool contains ( const QString & connectionName = QLatin1String( defaultConnection ) )
*/
HB_FUNC_STATIC( QSQLDATABASE_CONTAINS )
{
  QString par1;
  if( ISNIL(1) )
  {
    par1 = QLatin1String(QSqlDatabase::defaultConnection);
  }
  else
  {
    par1 = hb_parc(1);
  }
  hb_retl( QSqlDatabase::contains ( par1 ) );
}


/*
QSqlDatabase database ( const QString & connectionName = QLatin1String( defaultConnection ), bool open = true )
*/
HB_FUNC_STATIC( QSQLDATABASE_DATABASE )
{
  QString par1;
  if( ISNIL(1) )
  {
    par1 = QLatin1String(QSqlDatabase::defaultConnection);
  }
  else
  {
    par1 = hb_parc(1);
  }
  QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::database ( par1, PBOOL(2) ) );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QSQLDATABASE" );
  #else
  pDynSym = hb_dynsymFindName( "QSQLDATABASE" );
  #endif
  if( pDynSym )
  {
    #ifdef __XHARBOUR__
    hb_vmPushSymbol( pDynSym->pSymbol );
    #else
    hb_vmPushDynSym( pDynSym );
    #endif
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QSqlDatabase *) ptr );
    hb_objSendMsg( pObject, "NEWFROMPOINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
}

/*
QStringList drivers ()
*/
HB_FUNC_STATIC( QSQLDATABASE_DRIVERS )
{
  QStringList strl = QSqlDatabase::drivers (  );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<strl.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}


/*
bool isDriverAvailable ( const QString & name )
*/
HB_FUNC_STATIC( QSQLDATABASE_ISDRIVERAVAILABLE )
{
  hb_retl( QSqlDatabase::isDriverAvailable ( PQSTRING(1) ) );
}


/*
void registerSqlDriver ( const QString & name, QSqlDriverCreatorBase * creator )
*/
HB_FUNC_STATIC( QSQLDATABASE_REGISTERSQLDRIVER )
{
  QSqlDriverCreatorBase * par2 = (QSqlDriverCreatorBase *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QSqlDatabase::registerSqlDriver ( PQSTRING(1), par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeDatabase ( const QString & connectionName )
*/
HB_FUNC_STATIC( QSQLDATABASE_REMOVEDATABASE )
{
  QSqlDatabase::removeDatabase ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QSQLDATABASE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSQLDATABASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QSQLDATABASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QSQLDATABASE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLDATABASE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
