/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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
HB_FUNC( QSQLQUERY_NEW1 )
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
HB_FUNC( QSQLQUERY_NEW2 )
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
HB_FUNC( QSQLQUERY_NEW3 )
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
HB_FUNC( QSQLQUERY_NEW4 )
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

HB_FUNC( QSQLQUERY_NEW )
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

HB_FUNC( QSQLQUERY_DELETE )
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
HB_FUNC( QSQLQUERY_ADDBINDVALUE )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par1 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QSql::In : hb_parni(2);
    obj->addBindValue ( *par1,  (QSql::ParamType) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int at () const
*/
HB_FUNC( QSQLQUERY_AT )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->at (  );
    hb_retni( i );
  }
}


/*
void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
HB_FUNC( QSQLQUERY_BINDVALUE1 )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? (int) QSql::In : hb_parni(3);
    obj->bindValue ( par1, *par2,  (QSql::ParamType) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
HB_FUNC( QSQLQUERY_BINDVALUE2 )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? (int) QSql::In : hb_parni(3);
    obj->bindValue ( par1, *par2,  (QSql::ParamType) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
//[2]void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )

HB_FUNC( QSQLQUERY_BINDVALUE )
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
HB_FUNC( QSQLQUERY_BOUNDVALUE1 )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * ptr = new QVariant( obj->boundValue ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
QVariant boundValue ( int pos ) const
*/
HB_FUNC( QSQLQUERY_BOUNDVALUE2 )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->boundValue ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


//[1]QVariant boundValue ( const QString & placeholder ) const
//[2]QVariant boundValue ( int pos ) const

HB_FUNC( QSQLQUERY_BOUNDVALUE )
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
HB_FUNC( QSQLQUERY_CLEAR )
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
HB_FUNC( QSQLQUERY_DRIVER )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QSqlDriver * ptr = obj->driver (  );
    _qt4xhb_createReturnClass ( ptr, "QSQLDRIVER" );  }
}


/*
bool exec ( const QString & query )
*/
HB_FUNC( QSQLQUERY_EXEC1 )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->exec ( par1 );
    hb_retl( b );
  }
}


/*
bool exec ()
*/
HB_FUNC( QSQLQUERY_EXEC2 )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->exec (  );
    hb_retl( b );
  }
}


//[1]bool exec ( const QString & query )
//[2]bool exec ()

HB_FUNC( QSQLQUERY_EXEC )
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
HB_FUNC( QSQLQUERY_EXECBATCH )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->execBatch (  (QSqlQuery::BatchExecutionMode) par1 );
    hb_retl( b );
  }
}


/*
QString executedQuery () const
*/
HB_FUNC( QSQLQUERY_EXECUTEDQUERY )
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
HB_FUNC( QSQLQUERY_FINISH )
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
HB_FUNC( QSQLQUERY_FIRST )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->first (  );
    hb_retl( b );
  }
}


/*
bool isActive () const
*/
HB_FUNC( QSQLQUERY_ISACTIVE )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isActive (  );
    hb_retl( b );
  }
}


/*
bool isForwardOnly () const
*/
HB_FUNC( QSQLQUERY_ISFORWARDONLY )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isForwardOnly (  );
    hb_retl( b );
  }
}


/*
bool isNull ( int field ) const
*/
HB_FUNC( QSQLQUERY_ISNULL )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->isNull ( par1 );
    hb_retl( b );
  }
}


/*
bool isSelect () const
*/
HB_FUNC( QSQLQUERY_ISSELECT )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isSelect (  );
    hb_retl( b );
  }
}


/*
bool isValid () const
*/
HB_FUNC( QSQLQUERY_ISVALID )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
bool last ()
*/
HB_FUNC( QSQLQUERY_LAST )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->last (  );
    hb_retl( b );
  }
}


/*
QSqlError lastError () const
*/
HB_FUNC( QSQLQUERY_LASTERROR )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlError * ptr = new QSqlError( obj->lastError (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLERROR", true );  }
}


/*
QVariant lastInsertId () const
*/
HB_FUNC( QSQLQUERY_LASTINSERTID )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->lastInsertId (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
QString lastQuery () const
*/
HB_FUNC( QSQLQUERY_LASTQUERY )
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
HB_FUNC( QSQLQUERY_NEXT )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->next (  );
    hb_retl( b );
  }
}


/*
bool nextResult ()
*/
HB_FUNC( QSQLQUERY_NEXTRESULT )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->nextResult (  );
    hb_retl( b );
  }
}


/*
int numRowsAffected () const
*/
HB_FUNC( QSQLQUERY_NUMROWSAFFECTED )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->numRowsAffected (  );
    hb_retni( i );
  }
}


/*
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
*/
HB_FUNC( QSQLQUERY_NUMERICALPRECISIONPOLICY )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->numericalPrecisionPolicy (  );
    hb_retni( i );
  }
}


/*
bool prepare ( const QString & query )
*/
HB_FUNC( QSQLQUERY_PREPARE )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->prepare ( par1 );
    hb_retl( b );
  }
}


/*
bool previous ()
*/
HB_FUNC( QSQLQUERY_PREVIOUS )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->previous (  );
    hb_retl( b );
  }
}


/*
QSqlRecord record () const
*/
HB_FUNC( QSQLQUERY_RECORD )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLRECORD", true );  }
}


/*
const QSqlResult * result () const
*/
HB_FUNC( QSQLQUERY_RESULT )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QSqlResult * ptr = obj->result (  );
    _qt4xhb_createReturnClass ( ptr, "QSQLRESULT" );  }
}


/*
bool seek ( int index, bool relative = false )
*/
HB_FUNC( QSQLQUERY_SEEK )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = ISNIL(2)? false : hb_parl(2);
    bool b = obj->seek ( par1, par2 );
    hb_retl( b );
  }
}


/*
void setForwardOnly ( bool forward )
*/
HB_FUNC( QSQLQUERY_SETFORWARDONLY )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setForwardOnly ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
HB_FUNC( QSQLQUERY_SETNUMERICALPRECISIONPOLICY )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setNumericalPrecisionPolicy (  (QSql::NumericalPrecisionPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int size () const
*/
HB_FUNC( QSQLQUERY_SIZE )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->size (  );
    hb_retni( i );
  }
}


/*
QVariant value ( int index ) const
*/
HB_FUNC( QSQLQUERY_VALUE )
{
  QSqlQuery * obj = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->value ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}



