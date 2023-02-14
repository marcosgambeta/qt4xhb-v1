/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QABSTRACTURIRESOLVER
REQUEST QNETWORKACCESSMANAGER
REQUEST QXMLNAMEPOOL
REQUEST QXMLSCHEMA
#endif

CLASS QXmlSchemaValidator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD schema
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setSchema
   METHOD setUriResolver
   METHOD uriResolver
   METHOD validate

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlSchemaValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtXmlPatterns/QXmlSchemaValidator>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtXmlPatterns/QXmlSchema>
#include <QtXmlPatterns/QAbstractMessageHandler>
#include <QtNetwork/QNetworkAccessManager>
#include <QtXmlPatterns/QAbstractUriResolver>

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QXmlSchemaValidator()
    */
    QXmlSchemaValidator * obj = new QXmlSchemaValidator();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
  {
    /*
    QXmlSchemaValidator( const QXmlSchema & schema )
    */
    QXmlSchemaValidator * obj = new QXmlSchemaValidator( *PQXMLSCHEMA(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_DELETE )
{
  QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QAbstractMessageHandler * messageHandler() const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_MESSAGEHANDLER )
{
  QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractMessageHandler * ptr = obj->messageHandler();
      Qt4xHb::createReturnQObjectClass(ptr, "QABSTRACTMESSAGEHANDLER");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QXmlNamePool namePool() const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NAMEPOOL )
{
  QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QXmlNamePool * ptr = new QXmlNamePool( obj->namePool() );
      Qt4xHb::createReturnClass(ptr, "QXMLNAMEPOOL", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QNetworkAccessManager * networkAccessManager() const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NETWORKACCESSMANAGER )
{
  QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkAccessManager * ptr = obj->networkAccessManager();
      Qt4xHb::createReturnQObjectClass(ptr, "QNETWORKACCESSMANAGER");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QXmlSchema schema() const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SCHEMA )
{
  QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QXmlSchema * ptr = new QXmlSchema( obj->schema() );
      Qt4xHb::createReturnClass(ptr, "QXMLSCHEMA", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setMessageHandler( QAbstractMessageHandler * handler )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETMESSAGEHANDLER )
{
  QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTMESSAGEHANDLER(1) )
    {
#endif
      obj->setMessageHandler( PQABSTRACTMESSAGEHANDLER(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setNetworkAccessManager( QNetworkAccessManager * manager )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETNETWORKACCESSMANAGER )
{
  QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKACCESSMANAGER(1) )
    {
#endif
      obj->setNetworkAccessManager( PQNETWORKACCESSMANAGER(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setSchema( const QXmlSchema & schema )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETSCHEMA )
{
  QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
    {
#endif
      obj->setSchema( *PQXMLSCHEMA(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setUriResolver( const QAbstractUriResolver * resolver )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETURIRESOLVER )
{
  QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTURIRESOLVER(1) )
    {
#endif
      obj->setUriResolver( PQABSTRACTURIRESOLVER(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
const QAbstractUriResolver * uriResolver() const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_URIRESOLVER )
{
  QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QAbstractUriResolver * ptr = obj->uriResolver();
      Qt4xHb::createReturnQObjectClass(ptr, "QABSTRACTURIRESOLVER");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_VALIDATE )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    /*
    bool validate( const QUrl & source ) const
    */
    QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RBOOL( obj->validate( *PQURL(1)) );
    }
  }
  else if( ISBETWEEN(1, 2) && ISQIODEVICE(1) && (ISQURL(2) || HB_ISNIL(2)) )
  {
    /*
    bool validate( QIODevice * source, const QUrl & documentUri = QUrl() ) const
    */
    QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RBOOL( obj->validate( PQIODEVICE(1), HB_ISNIL(2) ? QUrl() : *static_cast<QUrl*>( Qt4xHb::itemGetPtr(2)) ) );
    }
  }
  else if( ISBETWEEN(1, 2) && ISQBYTEARRAY(1) && (ISQURL(2) || HB_ISNIL(2)) )
  {
    /*
    bool validate( const QByteArray & data, const QUrl & documentUri = QUrl() ) const
    */
    QXmlSchemaValidator * obj = static_cast<QXmlSchemaValidator*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RBOOL( obj->validate( *PQBYTEARRAY(1), HB_ISNIL(2) ? QUrl() : *static_cast<QUrl*>( Qt4xHb::itemGetPtr(2)) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_NEWFROM );
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_NEWFROM );
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
