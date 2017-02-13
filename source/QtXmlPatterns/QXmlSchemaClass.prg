/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QURL
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QXMLNAMEPOOL
REQUEST QNETWORKACCESSMANAGER
REQUEST QABSTRACTURIRESOLVER

CLASS QXmlSchema

   DATA pointer
   DATA class_id INIT Class_Id_QXmlSchema
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD documentUri
   METHOD isValid
   METHOD load1
   METHOD load2
   METHOD load3
   METHOD load
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setUriResolver
   METHOD uriResolver
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QXmlSchema
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QXmlSchema
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QXmlSchema
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QXmlSchema
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QXmlSchema
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QXmlSchema
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QXmlSchema>

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
QXmlSchema ()
*/
HB_FUNC( QXMLSCHEMA_NEW1 )
{
  QXmlSchema * o = NULL;
  o = new QXmlSchema (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlSchema *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlSchema ( const QXmlSchema & other )
*/
HB_FUNC( QXMLSCHEMA_NEW2 )
{
  QXmlSchema * o = NULL;
  QXmlSchema * par1 = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QXmlSchema ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlSchema *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QXmlSchema ()
//[2]QXmlSchema ( const QXmlSchema & other )

HB_FUNC( QXMLSCHEMA_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QXMLSCHEMA_DELETE )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QUrl documentUri () const
*/
HB_FUNC( QXMLSCHEMA_DOCUMENTURI )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->documentUri (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );  }
}


/*
bool isValid () const
*/
HB_FUNC( QXMLSCHEMA_ISVALID )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
bool load ( const QUrl & source )
*/
HB_FUNC( QXMLSCHEMA_LOAD1 )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->load ( *par1 );
    hb_retl( b );
  }
}


/*
bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
*/
HB_FUNC( QXMLSCHEMA_LOAD2 )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->load ( par1, par2 );
    hb_retl( b );
  }
}


/*
bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )
*/
HB_FUNC( QXMLSCHEMA_LOAD3 )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->load ( *par1, par2 );
    hb_retl( b );
  }
}


//[1]bool load ( const QUrl & source )
//[2]bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
//[3]bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )

HB_FUNC( QXMLSCHEMA_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_LOAD1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_LOAD2 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_LOAD3 );
  }
}

/*
QAbstractMessageHandler * messageHandler () const
*/
HB_FUNC( QXMLSCHEMA_MESSAGEHANDLER )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractMessageHandler * ptr = obj->messageHandler (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTMESSAGEHANDLER" );  }
}


/*
QXmlNamePool namePool () const
*/
HB_FUNC( QXMLSCHEMA_NAMEPOOL )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlNamePool * ptr = new QXmlNamePool( obj->namePool (  ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLNAMEPOOL", true );  }
}


/*
QNetworkAccessManager * networkAccessManager () const
*/
HB_FUNC( QXMLSCHEMA_NETWORKACCESSMANAGER )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->networkAccessManager (  );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );  }
}


/*
void setMessageHandler ( QAbstractMessageHandler * handler )
*/
HB_FUNC( QXMLSCHEMA_SETMESSAGEHANDLER )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractMessageHandler * par1 = (QAbstractMessageHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setMessageHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetworkAccessManager ( QNetworkAccessManager * manager )
*/
HB_FUNC( QXMLSCHEMA_SETNETWORKACCESSMANAGER )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkAccessManager * par1 = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setNetworkAccessManager ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUriResolver ( const QAbstractUriResolver * resolver )
*/
HB_FUNC( QXMLSCHEMA_SETURIRESOLVER )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractUriResolver * par1 = (QAbstractUriResolver *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUriResolver ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QAbstractUriResolver * uriResolver () const
*/
HB_FUNC( QXMLSCHEMA_URIRESOLVER )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QAbstractUriResolver * ptr = obj->uriResolver (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTURIRESOLVER" );  }
}





#pragma ENDDUMP
