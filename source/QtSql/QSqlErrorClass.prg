/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSqlError

   DATA pointer
   DATA class_id INIT Class_Id_QSqlError
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QSqlError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSqlError>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QSqlError ( const QString & driverText = QString(), const QString & databaseText = QString(), ErrorType type = NoError, int number = -1 )
*/
HB_FUNC_STATIC( QSQLERROR_NEW1 )
{
  QSqlError * o = NULL;
  QString par1 = ISNIL(1)? QString() : hb_parc(1);
  QString par2 = ISNIL(2)? QString() : hb_parc(2);
  o = new QSqlError ( par1, par2, ISNIL(3)? QSqlError::NoError : (QSqlError::ErrorType) hb_parni(3), ISNIL(4)? -1 : hb_parni(4) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSqlError ( const QSqlError & other )
*/
HB_FUNC_STATIC( QSQLERROR_NEW2 )
{
  QSqlError * o = NULL;
  QSqlError * par1 = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSqlError ( *par1 );
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
    QString str1 = obj->databaseText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    QString str1 = obj->driverText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    hb_retl( obj->isValid (  ) );
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
    hb_retni( obj->number (  ) );
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
    obj->setType (  (QSqlError::ErrorType) hb_parni(1) );
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
    QString str1 = obj->text (  );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    hb_retni( (int) obj->type (  ) );
  }
}


HB_FUNC_STATIC( QSQLERROR_NEWFROM )
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

HB_FUNC_STATIC( QSQLERROR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLERROR_NEWFROM );
}

HB_FUNC_STATIC( QSQLERROR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLERROR_NEWFROM );
}

HB_FUNC_STATIC( QSQLERROR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLERROR_SETSELFDESTRUCTION )
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
