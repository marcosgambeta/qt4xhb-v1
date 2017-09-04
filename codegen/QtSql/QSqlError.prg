$header

#include "hbclass.ch"


CLASS QSqlError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD databaseText
   METHOD driverText
   METHOD isValid
   METHOD number
   METHOD setDatabaseText
   METHOD setDriverText
   METHOD setNumber
   METHOD setType
   METHOD text
   METHOD type
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlError>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSqlError ( const QString & driverText = QString(), const QString & databaseText = QString(), ErrorType type = NoError, int number = -1 )
*/
HB_FUNC_STATIC( QSQLERROR_NEW1 )
{
  QSqlError * o = new QSqlError ( OPQSTRING(1,QString()), OPQSTRING(2,QString()), ISNIL(3)? QSqlError::NoError : (QSqlError::ErrorType) hb_parni(3), OPINT(4,-1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSqlError ( const QSqlError & other )
*/
HB_FUNC_STATIC( QSQLERROR_NEW2 )
{
  QSqlError * o = new QSqlError ( *PQSQLERROR(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QSqlError ( const QString & driverText = QString(), const QString & databaseText = QString(), ErrorType type = NoError, int number = -1 )
//[2]QSqlError ( const QSqlError & other )

HB_FUNC_STATIC( QSQLERROR_NEW )
{
  if( ISBETWEEN(0,4) && (ISCHAR(1)||ISNIL(1)) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QSQLERROR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSQLERROR(1) )
  {
    HB_FUNC_EXEC( QSQLERROR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLERROR_DELETE )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString databaseText () const
*/
HB_FUNC_STATIC( QSQLERROR_DATABASETEXT )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->databaseText () );
  }
}


/*
QString driverText () const
*/
HB_FUNC_STATIC( QSQLERROR_DRIVERTEXT )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->driverText () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLERROR_ISVALID )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
int number () const
*/
HB_FUNC_STATIC( QSQLERROR_NUMBER )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->number () );
  }
}


/*
void setDatabaseText ( const QString & databaseText )
*/
HB_FUNC_STATIC( QSQLERROR_SETDATABASETEXT )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDatabaseText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDriverText ( const QString & driverText )
*/
HB_FUNC_STATIC( QSQLERROR_SETDRIVERTEXT )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDriverText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNumber ( int number )
*/
HB_FUNC_STATIC( QSQLERROR_SETNUMBER )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNumber ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setType ( ErrorType type )
*/
HB_FUNC_STATIC( QSQLERROR_SETTYPE )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setType ( (QSqlError::ErrorType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text () const
*/
HB_FUNC_STATIC( QSQLERROR_TEXT )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->text () );
  }
}


/*
ErrorType type () const
*/
HB_FUNC_STATIC( QSQLERROR_TYPE )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->type () );
  }
}

$extraMethods

#pragma ENDDUMP
