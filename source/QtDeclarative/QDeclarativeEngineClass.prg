/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QDECLARATIVEIMAGEPROVIDER
REQUEST QNETWORKACCESSMANAGER
REQUEST QDECLARATIVENETWORKACCESSMANAGERFACTORY
REQUEST QDECLARATIVECONTEXT
#endif

CLASS QDeclarativeEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addImageProvider
   METHOD addImportPath
   METHOD addPluginPath
   METHOD baseUrl
   METHOD clearComponentCache
   METHOD imageProvider
   METHOD importPathList
   METHOD importPlugin
   METHOD networkAccessManager
   METHOD networkAccessManagerFactory
   METHOD offlineStoragePath
   METHOD outputWarningsToStandardError
   METHOD pluginPathList
   METHOD removeImageProvider
   METHOD rootContext
   METHOD setBaseUrl
   METHOD setImportPathList
   METHOD setNetworkAccessManagerFactory
   METHOD setOfflineStoragePath
   METHOD setOutputWarningsToStandardError
   METHOD setPluginPathList
   METHOD contextForObject
   METHOD objectOwnership
   METHOD setContextForObject
   METHOD setObjectOwnership

   METHOD onQuit
   METHOD onWarnings

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDeclarativeEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>
#include <QNetworkAccessManager>
#include <QDeclarativeContext>

/*
QDeclarativeEngine ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QDeclarativeEngine * o = new QDeclarativeEngine ( OPQOBJECT(1,0) );
    _qt4xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVEENGINE_DELETE )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addImageProvider ( const QString & providerId, QDeclarativeImageProvider * provider )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_ADDIMAGEPROVIDER )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISQDECLARATIVEIMAGEPROVIDER(2) )
    {
      obj->addImageProvider ( PQSTRING(1), PQDECLARATIVEIMAGEPROVIDER(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addImportPath ( const QString & path )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_ADDIMPORTPATH )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->addImportPath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addPluginPath ( const QString & path )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_ADDPLUGINPATH )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->addPluginPath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUrl baseUrl () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_BASEURL )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUrl * ptr = new QUrl( obj->baseUrl () );
      _qt4xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void clearComponentCache ()
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_CLEARCOMPONENTCACHE )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clearComponentCache ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDeclarativeImageProvider * imageProvider ( const QString & providerId ) const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_IMAGEPROVIDER )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QDeclarativeImageProvider * ptr = obj->imageProvider ( PQSTRING(1) );
      _qt4xhb_createReturnClass ( ptr, "QDECLARATIVEIMAGEPROVIDER", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList importPathList () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_IMPORTPATHLIST )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->importPathList () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool importPlugin ( const QString & filePath, const QString & uri, QString * errorString )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_IMPORTPLUGIN )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) )
    {
      RBOOL( obj->importPlugin ( PQSTRING(1), PQSTRING(2), NULL ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkAccessManager * networkAccessManager () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_NETWORKACCESSMANAGER )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QNetworkAccessManager * ptr = obj->networkAccessManager ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QNETWORKACCESSMANAGER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDeclarativeNetworkAccessManagerFactory * networkAccessManagerFactory () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_NETWORKACCESSMANAGERFACTORY )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDeclarativeNetworkAccessManagerFactory * ptr = obj->networkAccessManagerFactory ();
      _qt4xhb_createReturnClass ( ptr, "QDECLARATIVENETWORKACCESSMANAGERFACTORY", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString offlineStoragePath () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_OFFLINESTORAGEPATH )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->offlineStoragePath () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool outputWarningsToStandardError () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_OUTPUTWARNINGSTOSTANDARDERROR )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->outputWarningsToStandardError () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList pluginPathList () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_PLUGINPATHLIST )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->pluginPathList () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void removeImageProvider ( const QString & providerId )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_REMOVEIMAGEPROVIDER )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->removeImageProvider ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDeclarativeContext * rootContext () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_ROOTCONTEXT )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDeclarativeContext * ptr = obj->rootContext ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QDECLARATIVECONTEXT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBaseUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETBASEURL )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQURL(1) )
    {
      obj->setBaseUrl ( *PQURL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setImportPathList ( const QStringList & paths )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETIMPORTPATHLIST )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->setImportPathList ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNetworkAccessManagerFactory ( QDeclarativeNetworkAccessManagerFactory * factory )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETNETWORKACCESSMANAGERFACTORY )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDECLARATIVENETWORKACCESSMANAGERFACTORY(1) )
    {
      obj->setNetworkAccessManagerFactory ( PQDECLARATIVENETWORKACCESSMANAGERFACTORY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOfflineStoragePath ( const QString & dir )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETOFFLINESTORAGEPATH )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setOfflineStoragePath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOutputWarningsToStandardError ( bool enabled )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETOUTPUTWARNINGSTOSTANDARDERROR )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setOutputWarningsToStandardError ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPluginPathList ( const QStringList & paths )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETPLUGINPATHLIST )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->setPluginPathList ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QDeclarativeContext * contextForObject ( const QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_CONTEXTFOROBJECT )
{
    if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
      QDeclarativeContext * ptr = QDeclarativeEngine::contextForObject ( PQOBJECT(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QDECLARATIVECONTEXT" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static ObjectOwnership objectOwnership ( QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_OBJECTOWNERSHIP )
{
    if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
      RENUM( QDeclarativeEngine::objectOwnership ( PQOBJECT(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setContextForObject ( QObject * object, QDeclarativeContext * context )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETCONTEXTFOROBJECT )
{
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVECONTEXT(2) )
  {
      QDeclarativeEngine::setContextForObject ( PQOBJECT(1), PQDECLARATIVECONTEXT(2) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setObjectOwnership ( QObject * object, ObjectOwnership ownership )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETOBJECTOWNERSHIP )
{
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
      QDeclarativeEngine::setObjectOwnership ( PQOBJECT(1), (QDeclarativeEngine::ObjectOwnership) hb_parni(2) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
