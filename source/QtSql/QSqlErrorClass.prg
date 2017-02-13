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
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QSqlError
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QSqlError
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QSqlError
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QSqlError
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QSqlError
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QSqlError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSqlError>

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

/*
QSqlError ( const QString & driverText = QString(), const QString & databaseText = QString(), ErrorType type = NoError, int number = -1 )
*/
HB_FUNC( QSQLERROR_NEW1 )
{
  QSqlError * o = NULL;
  QString par1 = ISNIL(1)? QString() : hb_parc(1);
  QString par2 = ISNIL(2)? QString() : hb_parc(2);
  int par3 = ISNIL(3)? (int) QSqlError::NoError : hb_parni(3);
  int par4 = ISNIL(4)? -1 : hb_parni(4);
  o = new QSqlError ( par1, par2,  (QSqlError::ErrorType) par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlError *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSqlError ( const QSqlError & other )
*/
HB_FUNC( QSQLERROR_NEW2 )
{
  QSqlError * o = NULL;
  QSqlError * par1 = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSqlError ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlError *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QSqlError ( const QString & driverText = QString(), const QString & databaseText = QString(), ErrorType type = NoError, int number = -1 )
//[2]QSqlError ( const QSqlError & other )

HB_FUNC( QSQLERROR_NEW )
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

HB_FUNC( QSQLERROR_DELETE )
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
HB_FUNC( QSQLERROR_DATABASETEXT )
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
HB_FUNC( QSQLERROR_DRIVERTEXT )
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
HB_FUNC( QSQLERROR_ISVALID )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
int number () const
*/
HB_FUNC( QSQLERROR_NUMBER )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->number (  );
    hb_retni( i );
  }
}


/*
void setDatabaseText ( const QString & databaseText )
*/
HB_FUNC( QSQLERROR_SETDATABASETEXT )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setDatabaseText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDriverText ( const QString & driverText )
*/
HB_FUNC( QSQLERROR_SETDRIVERTEXT )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setDriverText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNumber ( int number )
*/
HB_FUNC( QSQLERROR_SETNUMBER )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setNumber ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setType ( ErrorType type )
*/
HB_FUNC( QSQLERROR_SETTYPE )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setType (  (QSqlError::ErrorType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text () const
*/
HB_FUNC( QSQLERROR_TEXT )
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
HB_FUNC( QSQLERROR_TYPE )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}




#pragma ENDDUMP
