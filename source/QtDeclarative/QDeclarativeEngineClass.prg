/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QDECLARATIVEIMAGEPROVIDER
REQUEST QNETWORKACCESSMANAGER
REQUEST QDECLARATIVENETWORKACCESSMANAGERFACTORY
REQUEST QDECLARATIVECONTEXT
#endif

CLASS QDeclarativeEngine INHERIT QObject

   DATA class_id INIT Class_Id_QDeclarativeEngine
   DATA self_destruction INIT .F.

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

/*
QDeclarativeEngine ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_NEW )
{
  QDeclarativeEngine * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeEngine ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
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
    QDeclarativeImageProvider * par2 = (QDeclarativeImageProvider *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addImageProvider ( PQSTRING(1), par2 );
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
    obj->addImportPath ( PQSTRING(1) );
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
    obj->addPluginPath ( PQSTRING(1) );
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
    QUrl * ptr = new QUrl( obj->baseUrl (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
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
    obj->clearComponentCache (  );
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
    QDeclarativeImageProvider * ptr = obj->imageProvider ( PQSTRING(1) );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVEIMAGEPROVIDER" );
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
    QStringList strl = obj->importPathList (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
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
    QString * par3 = NULL;
    hb_retl( obj->importPlugin ( PQSTRING(1), PQSTRING(2), par3 ) );
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
    QNetworkAccessManager * ptr = obj->networkAccessManager (  );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
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
    QDeclarativeNetworkAccessManagerFactory * ptr = obj->networkAccessManagerFactory (  );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVENETWORKACCESSMANAGERFACTORY" );
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
    QString str1 = obj->offlineStoragePath (  );
    hb_retc( RQSTRING(str1) );
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
    hb_retl( obj->outputWarningsToStandardError (  ) );
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
    QStringList strl = obj->pluginPathList (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
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
    obj->removeImageProvider ( PQSTRING(1) );
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
    QDeclarativeContext * ptr = obj->rootContext (  );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
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
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBaseUrl ( *par1 );
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
    obj->setImportPathList ( PQSTRINGLIST(1) );
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
    QDeclarativeNetworkAccessManagerFactory * par1 = (QDeclarativeNetworkAccessManagerFactory *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setNetworkAccessManagerFactory ( par1 );
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
    obj->setOfflineStoragePath ( PQSTRING(1) );
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
    obj->setOutputWarningsToStandardError ( PBOOL(1) );
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
    obj->setPluginPathList ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QDeclarativeContext * contextForObject ( const QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_CONTEXTFOROBJECT )
{
  const QObject * par1 = (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeContext * ptr = QDeclarativeEngine::contextForObject ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
}


/*
ObjectOwnership objectOwnership ( QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_OBJECTOWNERSHIP )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  hb_retni( (int) QDeclarativeEngine::objectOwnership ( par1 ) );
}


/*
void setContextForObject ( QObject * object, QDeclarativeContext * context )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETCONTEXTFOROBJECT )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeContext * par2 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeEngine::setContextForObject ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setObjectOwnership ( QObject * object, ObjectOwnership ownership )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETOBJECTOWNERSHIP )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDeclarativeEngine::setObjectOwnership ( par1,  (QDeclarativeEngine::ObjectOwnership) hb_parni(2) );
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
