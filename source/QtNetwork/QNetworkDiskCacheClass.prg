/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QNETWORKCACHEMETADATA
REQUEST QIODEVICE

CLASS QNetworkDiskCache INHERIT QAbstractNetworkCache

   DATA class_id INIT Class_Id_QNetworkDiskCache
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD cacheDirectory
   METHOD fileMetaData
   METHOD maximumCacheSize
   METHOD setCacheDirectory
   METHOD setMaximumCacheSize
   METHOD cacheSize
   METHOD data
   METHOD insert
   METHOD metaData
   METHOD prepare
   METHOD remove
   METHOD updateMetaData
   METHOD clear
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkDiskCache
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QNetworkDiskCache>

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
QNetworkDiskCache ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_NEW )
{
  QNetworkDiskCache * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QNetworkDiskCache ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkDiskCache *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QNETWORKDISKCACHE_DELETE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString cacheDirectory () const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_CACHEDIRECTORY )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->cacheDirectory (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QNetworkCacheMetaData fileMetaData ( const QString & fileName ) const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_FILEMETADATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QNetworkCacheMetaData * ptr = new QNetworkCacheMetaData( obj->fileMetaData ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCACHEMETADATA", true );
  }
}


/*
qint64 maximumCacheSize () const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_MAXIMUMCACHESIZE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->maximumCacheSize (  );
    hb_retni( i );
  }
}


/*
void setCacheDirectory ( const QString & cacheDir )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_SETCACHEDIRECTORY )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setCacheDirectory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumCacheSize ( qint64 size )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_SETMAXIMUMCACHESIZE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    obj->setMaximumCacheSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual qint64 cacheSize () const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_CACHESIZE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->cacheSize (  );
    hb_retni( i );
  }
}


/*
virtual QIODevice * data ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_DATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QIODevice * ptr = obj->data ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual void insert ( QIODevice * device )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_INSERT )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insert ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QNetworkCacheMetaData metaData ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_METADATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QNetworkCacheMetaData * ptr = new QNetworkCacheMetaData( obj->metaData ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCACHEMETADATA", true );
  }
}


/*
virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_PREPARE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkCacheMetaData * par1 = (QNetworkCacheMetaData *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QIODevice * ptr = obj->prepare ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual bool remove ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_REMOVE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->remove ( *par1 ) );
  }
}


/*
virtual void updateMetaData ( const QNetworkCacheMetaData & metaData )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_UPDATEMETADATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkCacheMetaData * par1 = (QNetworkCacheMetaData *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->updateMetaData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void clear ()
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_CLEAR )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
