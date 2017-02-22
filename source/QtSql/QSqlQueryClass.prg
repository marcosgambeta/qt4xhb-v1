/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QSQLDRIVER
REQUEST QSQLERROR
REQUEST QSQLRECORD
REQUEST QSQLRESULT

CLASS QSqlQuery

   DATA pointer
   DATA class_id INIT Class_Id_QSqlQuery
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD addBindValue
   METHOD at
   METHOD bindValue1
   METHOD bindValue2
   METHOD bindValue
   METHOD boundValue1
   METHOD boundValue2
   METHOD boundValue
   METHOD clear
   METHOD driver
   METHOD exec1
   METHOD exec2
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

PROCEDURE destroyObject () CLASS QSqlQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSqlQuery>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QVariant>
#include <QSqlError>
#include <QSqlRecord>

/*
QSqlQuery ( QSqlResult * result )
*/
HB_FUNC_STATIC( QSQLQUERY_NEW1 )
{
  QSqlQuery * o = NULL;
  QSqlResult * par1 = (QSqlResult *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSqlQuery ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
*/
HB_FUNC_STATIC( QSQLQUERY_NEW2 )
{
  QSqlQuery * o = NULL;
  QString par1 = ISNIL(1)? QString() : hb_parc(1);
  QSqlDatabase par2 = ISNIL(2)? QSqlDatabase() : *(QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSqlQuery ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSqlQuery ( QSqlDatabase db )
*/
HB_FUNC_STATIC( QSQLQUERY_NEW3 )
{
  QSqlQuery * o = NULL;
  QSqlDatabase * par1 = (QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSqlQuery ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSqlQuery ( const QSqlQuery & other )
*/
HB_FUNC_STATIC( QSQLQUERY_NEW4 )
{
  QSqlQuery * o = NULL;
  QSqlQuery * par1 = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSqlQuery ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QSqlQuery ( QSqlResult * result )
//[2]QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
//[3]QSqlQuery ( QSqlDatabase db )
//[4]QSqlQuery ( const QSqlQuery & other )

HB_FUNC_STATIC( QSQLQUERY_NEW )
{
  if( ISNUMPAR(1) && ISQSQLRESULT(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_NEW1 );
  }
  else if( ISBETWEEN(0,2) && (ISCHAR(1)||ISNIL(1)) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSQLQUERY_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLQUERY_DELETE )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addBindValue ( const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
HB_FUNC_STATIC( QSQLQUERY_ADDBINDVALUE )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par1 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addBindValue ( *par1, ISNIL(2)? QSql::In : (QSql::ParamType) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int at () const
*/
HB_FUNC_STATIC( QSQLQUERY_AT )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->at (  ) );
  }
}


/*
void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
HB_FUNC_STATIC( QSQLQUERY_BINDVALUE1 )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->bindValue ( par1, *par2, ISNIL(3)? QSql::In : (QSql::ParamType) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
HB_FUNC_STATIC( QSQLQUERY_BINDVALUE2 )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->bindValue ( hb_parni(1), *par2, ISNIL(3)? QSql::In : (QSql::ParamType) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
//[2]void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )

HB_FUNC_STATIC( QSQLQUERY_BINDVALUE )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISQVARIANT(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSQLQUERY_BINDVALUE1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQVARIANT(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSQLQUERY_BINDVALUE2 );
  }
}

/*
QVariant boundValue ( const QString & placeholder ) const
*/
HB_FUNC_STATIC( QSQLQUERY_BOUNDVALUE1 )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * ptr = new QVariant( obj->boundValue ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QVariant boundValue ( int pos ) const
*/
HB_FUNC_STATIC( QSQLQUERY_BOUNDVALUE2 )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->boundValue ( hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


//[1]QVariant boundValue ( const QString & placeholder ) const
//[2]QVariant boundValue ( int pos ) const

HB_FUNC_STATIC( QSQLQUERY_BOUNDVALUE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_BOUNDVALUE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_BOUNDVALUE2 );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QSQLQUERY_CLEAR )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QSqlDriver * driver () const
*/
HB_FUNC_STATIC( QSQLQUERY_DRIVER )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QSqlDriver * ptr = obj->driver (  );
    _qt4xhb_createReturnClass ( ptr, "QSQLDRIVER" );
  }
}


/*
bool exec ( const QString & query )
*/
HB_FUNC_STATIC( QSQLQUERY_EXEC1 )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->exec ( par1 ) );
  }
}


/*
bool exec ()
*/
HB_FUNC_STATIC( QSQLQUERY_EXEC2 )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->exec (  ) );
  }
}


//[1]bool exec ( const QString & query )
//[2]bool exec ()

HB_FUNC_STATIC( QSQLQUERY_EXEC )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLQUERY_EXEC1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSQLQUERY_EXEC2 );
  }
}

/*
bool execBatch ( BatchExecutionMode mode = ValuesAsRows )
*/
HB_FUNC_STATIC( QSQLQUERY_EXECBATCH )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->execBatch (  (QSqlQuery::BatchExecutionMode) hb_parni(1) ) );
  }
}


/*
QString executedQuery () const
*/
HB_FUNC_STATIC( QSQLQUERY_EXECUTEDQUERY )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->executedQuery (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void finish ()
*/
HB_FUNC_STATIC( QSQLQUERY_FINISH )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->finish (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool first ()
*/
HB_FUNC_STATIC( QSQLQUERY_FIRST )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->first (  ) );
  }
}


/*
bool isActive () const
*/
HB_FUNC_STATIC( QSQLQUERY_ISACTIVE )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
}


/*
bool isForwardOnly () const
*/
HB_FUNC_STATIC( QSQLQUERY_ISFORWARDONLY )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isForwardOnly (  ) );
  }
}


/*
bool isNull ( int field ) const
*/
HB_FUNC_STATIC( QSQLQUERY_ISNULL )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull ( hb_parni(1) ) );
  }
}


/*
bool isSelect () const
*/
HB_FUNC_STATIC( QSQLQUERY_ISSELECT )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSelect (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLQUERY_ISVALID )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool last ()
*/
HB_FUNC_STATIC( QSQLQUERY_LAST )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->last (  ) );
  }
}


/*
QSqlError lastError () const
*/
HB_FUNC_STATIC( QSQLQUERY_LASTERROR )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlError * ptr = new QSqlError( obj->lastError (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLERROR", true );
  }
}


/*
QVariant lastInsertId () const
*/
HB_FUNC_STATIC( QSQLQUERY_LASTINSERTID )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->lastInsertId (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QString lastQuery () const
*/
HB_FUNC_STATIC( QSQLQUERY_LASTQUERY )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->lastQuery (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool next ()
*/
HB_FUNC_STATIC( QSQLQUERY_NEXT )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->next (  ) );
  }
}


/*
bool nextResult ()
*/
HB_FUNC_STATIC( QSQLQUERY_NEXTRESULT )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->nextResult (  ) );
  }
}


/*
int numRowsAffected () const
*/
HB_FUNC_STATIC( QSQLQUERY_NUMROWSAFFECTED )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->numRowsAffected (  ) );
  }
}


/*
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
*/
HB_FUNC_STATIC( QSQLQUERY_NUMERICALPRECISIONPOLICY )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->numericalPrecisionPolicy (  ) );
  }
}


/*
bool prepare ( const QString & query )
*/
HB_FUNC_STATIC( QSQLQUERY_PREPARE )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->prepare ( par1 ) );
  }
}


/*
bool previous ()
*/
HB_FUNC_STATIC( QSQLQUERY_PREVIOUS )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->previous (  ) );
  }
}


/*
QSqlRecord record () const
*/
HB_FUNC_STATIC( QSQLQUERY_RECORD )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}


/*
const QSqlResult * result () const
*/
HB_FUNC_STATIC( QSQLQUERY_RESULT )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QSqlResult * ptr = obj->result (  );
    _qt4xhb_createReturnClass ( ptr, "QSQLRESULT" );
  }
}


/*
bool seek ( int index, bool relative = false )
*/
HB_FUNC_STATIC( QSQLQUERY_SEEK )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->seek ( hb_parni(1), ISNIL(2)? false : hb_parl(2) ) );
  }
}


/*
void setForwardOnly ( bool forward )
*/
HB_FUNC_STATIC( QSQLQUERY_SETFORWARDONLY )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setForwardOnly ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
HB_FUNC_STATIC( QSQLQUERY_SETNUMERICALPRECISIONPOLICY )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNumericalPrecisionPolicy (  (QSql::NumericalPrecisionPolicy) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int size () const
*/
HB_FUNC_STATIC( QSQLQUERY_SIZE )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
QVariant value ( int index ) const
*/
HB_FUNC_STATIC( QSQLQUERY_VALUE )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


HB_FUNC_STATIC( QSQLQUERY_NEWFROM )
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

HB_FUNC_STATIC( QSQLQUERY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLQUERY_NEWFROM );
}

HB_FUNC_STATIC( QSQLQUERY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLQUERY_NEWFROM );
}

HB_FUNC_STATIC( QSQLQUERY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLQUERY_SETSELFDESTRUCTION )
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
