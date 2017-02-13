/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QUUID
REQUEST QOBJECT
REQUEST QMETAOBJECT

CLASS QAxFactory INHERIT QObject

   DATA class_id INIT Class_Id_QAxFactory
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD appID
   METHOD classID
   METHOD createObject
   METHOD eventsID
   METHOD exposeToSuperClass
   METHOD featureList
   METHOD hasStockEvents
   METHOD interfaceID
   METHOD isService
   METHOD metaObject
   METHOD registerClass
   METHOD stayTopLevel
   METHOD typeLibID
   METHOD unregisterClass
   METHOD validateLicenseKey
   METHOD isServer
   METHOD registerActiveObject
   METHOD serverDirPath
   METHOD serverFilePath
   METHOD startServer
   METHOD stopServer
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAxFactory>

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


HB_FUNC( QAXFACTORY_DELETE )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QUuid appID () const
*/
HB_FUNC( QAXFACTORY_APPID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUuid * ptr = new QUuid( obj->appID (  ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );  }
}


/*
virtual QUuid classID ( const QString & key ) const
*/
HB_FUNC( QAXFACTORY_CLASSID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QUuid * ptr = new QUuid( obj->classID ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );  }
}


/*
virtual QObject * createObject ( const QString & key ) = 0
*/
HB_FUNC( QAXFACTORY_CREATEOBJECT )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QObject * ptr = obj->createObject ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );  }
}



/*
virtual QUuid eventsID ( const QString & key ) const
*/
HB_FUNC( QAXFACTORY_EVENTSID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QUuid * ptr = new QUuid( obj->eventsID ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );  }
}


/*
virtual QString exposeToSuperClass ( const QString & key ) const
*/
HB_FUNC( QAXFACTORY_EXPOSETOSUPERCLASS )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->exposeToSuperClass ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QStringList featureList () const = 0
*/
HB_FUNC( QAXFACTORY_FEATURELIST )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->featureList (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual bool hasStockEvents ( const QString & key ) const
*/
HB_FUNC( QAXFACTORY_HASSTOCKEVENTS )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->hasStockEvents ( par1 );
    hb_retl( b );
  }
}


/*
virtual QUuid interfaceID ( const QString & key ) const
*/
HB_FUNC( QAXFACTORY_INTERFACEID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QUuid * ptr = new QUuid( obj->interfaceID ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );  }
}


/*
virtual bool isService () const
*/
HB_FUNC( QAXFACTORY_ISSERVICE )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isService (  );
    hb_retl( b );
  }
}


/*
virtual const QMetaObject * metaObject ( const QString & key ) const = 0
*/
HB_FUNC( QAXFACTORY_METAOBJECT )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    const QMetaObject * ptr = obj->metaObject ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );  }
}


/*
virtual void registerClass ( const QString & key, QSettings * settings ) const
*/
HB_FUNC( QAXFACTORY_REGISTERCLASS )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QSettings * par2 = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->registerClass ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool stayTopLevel ( const QString & key ) const
*/
HB_FUNC( QAXFACTORY_STAYTOPLEVEL )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->stayTopLevel ( par1 );
    hb_retl( b );
  }
}


/*
virtual QUuid typeLibID () const
*/
HB_FUNC( QAXFACTORY_TYPELIBID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUuid * ptr = new QUuid( obj->typeLibID (  ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );  }
}


/*
virtual void unregisterClass ( const QString & key, QSettings * settings ) const
*/
HB_FUNC( QAXFACTORY_UNREGISTERCLASS )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QSettings * par2 = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->unregisterClass ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool validateLicenseKey ( const QString & key, const QString & licenseKey ) const
*/
HB_FUNC( QAXFACTORY_VALIDATELICENSEKEY )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    bool b = obj->validateLicenseKey ( par1, par2 );
    hb_retl( b );
  }
}



/*
bool isServer ()
*/
HB_FUNC( QAXFACTORY_ISSERVER )
{
  bool b = QAxFactory::isServer (  );
  hb_retl( b );
}


/*
bool registerActiveObject ( QObject * object )
*/
HB_FUNC( QAXFACTORY_REGISTERACTIVEOBJECT )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  bool b = QAxFactory::registerActiveObject ( par1 );
  hb_retl( b );
}


/*
QString serverDirPath ()
*/
HB_FUNC( QAXFACTORY_SERVERDIRPATH )
{
  QString str1 = QAxFactory::serverDirPath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString serverFilePath ()
*/
HB_FUNC( QAXFACTORY_SERVERFILEPATH )
{
  QString str1 = QAxFactory::serverFilePath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
bool startServer ( ServerType type = MultipleInstances )
*/
HB_FUNC( QAXFACTORY_STARTSERVER )
{
  int par1 = ISNIL(1)? (int) QAxFactory::MultipleInstances : hb_parni(1);
  bool b = QAxFactory::startServer (  (QAxFactory::ServerType) par1 );
  hb_retl( b );
}


/*
bool stopServer ()
*/
HB_FUNC( QAXFACTORY_STOPSERVER )
{
  bool b = QAxFactory::stopServer (  );
  hb_retl( b );
}




#pragma ENDDUMP
