/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QDeclarativeError

   DATA pointer
   DATA class_id INIT Class_Id_QDeclarativeError
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD column
   METHOD description
   METHOD isValid
   METHOD line
   METHOD setColumn
   METHOD setDescription
   METHOD setLine
   METHOD setUrl
   METHOD toString
   METHOD url
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDeclarativeError>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QDeclarativeError ()
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_NEW1 )
{
  QDeclarativeError * o = NULL;
  o = new QDeclarativeError (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeError *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDeclarativeError ( const QDeclarativeError & other )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_NEW2 )
{
  QDeclarativeError * o = NULL;
  QDeclarativeError * par1 = (QDeclarativeError *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeError ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeError *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QDeclarativeError ()
//[2]QDeclarativeError ( const QDeclarativeError & other )

HB_FUNC_STATIC( QDECLARATIVEERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDECLARATIVEERROR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVEERROR(1) )
  {
    HB_FUNC_EXEC( QDECLARATIVEERROR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVEERROR_DELETE )
{
  QDeclarativeError * obj = (QDeclarativeError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int column () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_COLUMN )
{
  QDeclarativeError * obj = (QDeclarativeError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->column (  ) );
  }
}


/*
QString description () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_DESCRIPTION )
{
  QDeclarativeError * obj = (QDeclarativeError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->description (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_ISVALID )
{
  QDeclarativeError * obj = (QDeclarativeError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
int line () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_LINE )
{
  QDeclarativeError * obj = (QDeclarativeError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->line (  ) );
  }
}


/*
void setColumn ( int column )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_SETCOLUMN )
{
  QDeclarativeError * obj = (QDeclarativeError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumn ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDescription ( const QString & description )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_SETDESCRIPTION )
{
  QDeclarativeError * obj = (QDeclarativeError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setDescription ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLine ( int line )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_SETLINE )
{
  QDeclarativeError * obj = (QDeclarativeError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLine ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_SETURL )
{
  QDeclarativeError * obj = (QDeclarativeError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString toString () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_TOSTRING )
{
  QDeclarativeError * obj = (QDeclarativeError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_URL )
{
  QDeclarativeError * obj = (QDeclarativeError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


HB_FUNC_STATIC( QDECLARATIVEERROR_NEWFROM )
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

HB_FUNC_STATIC( QDECLARATIVEERROR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDECLARATIVEERROR_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEERROR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDECLARATIVEERROR_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEERROR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDECLARATIVEERROR_SETSELFDESTRUCTION )
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
