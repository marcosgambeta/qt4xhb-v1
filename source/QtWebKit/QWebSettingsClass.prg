/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QWEBSETTINGS
REQUEST QICON
REQUEST QPIXMAP
#endif

CLASS QWebSettings

   DATA pointer
   DATA class_id INIT Class_Id_QWebSettings
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD defaultTextEncoding
   METHOD fontFamily
   METHOD fontSize
   METHOD localStoragePath
   METHOD resetAttribute
   METHOD resetFontFamily
   METHOD resetFontSize
   METHOD setAttribute
   METHOD setDefaultTextEncoding
   METHOD setFontFamily
   METHOD setFontSize
   METHOD setLocalStoragePath
   METHOD setUserStyleSheetUrl
   METHOD testAttribute
   METHOD userStyleSheetUrl
   METHOD clearIconDatabase
   METHOD clearMemoryCaches
   METHOD enablePersistentStorage
   METHOD globalSettings
   METHOD iconDatabasePath
   METHOD iconForUrl
   METHOD maximumPagesInCache
   METHOD offlineStorageDefaultQuota
   METHOD offlineStoragePath
   METHOD offlineWebApplicationCachePath
   METHOD offlineWebApplicationCacheQuota
   METHOD setIconDatabasePath
   METHOD setMaximumPagesInCache
   METHOD setObjectCacheCapacities
   METHOD setOfflineStorageDefaultQuota
   METHOD setOfflineStoragePath
   METHOD setOfflineWebApplicationCachePath
   METHOD setOfflineWebApplicationCacheQuota
   METHOD setWebGraphic
   METHOD webGraphic
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebSettings
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWebSettings>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QUrl>



/*
QString defaultTextEncoding () const
*/
HB_FUNC_STATIC( QWEBSETTINGS_DEFAULTTEXTENCODING )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->defaultTextEncoding (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString fontFamily ( FontFamily which ) const
*/
HB_FUNC_STATIC( QWEBSETTINGS_FONTFAMILY )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->fontFamily (  (QWebSettings::FontFamily) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int fontSize ( FontSize type ) const
*/
HB_FUNC_STATIC( QWEBSETTINGS_FONTSIZE )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->fontSize (  (QWebSettings::FontSize) par1 ) );
  }
}


/*
QString localStoragePath () const
*/
HB_FUNC_STATIC( QWEBSETTINGS_LOCALSTORAGEPATH )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->localStoragePath (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void resetAttribute ( WebAttribute attribute )
*/
HB_FUNC_STATIC( QWEBSETTINGS_RESETATTRIBUTE )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->resetAttribute (  (QWebSettings::WebAttribute) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resetFontFamily ( FontFamily which )
*/
HB_FUNC_STATIC( QWEBSETTINGS_RESETFONTFAMILY )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->resetFontFamily (  (QWebSettings::FontFamily) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resetFontSize ( FontSize type )
*/
HB_FUNC_STATIC( QWEBSETTINGS_RESETFONTSIZE )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->resetFontSize (  (QWebSettings::FontSize) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttribute ( WebAttribute attribute, bool on )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETATTRIBUTE )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAttribute (  (QWebSettings::WebAttribute) par1, (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultTextEncoding ( const QString & encoding )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETDEFAULTTEXTENCODING )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setDefaultTextEncoding ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontFamily ( FontFamily which, const QString & family )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETFONTFAMILY )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setFontFamily (  (QWebSettings::FontFamily) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontSize ( FontSize type, int size )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETFONTSIZE )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setFontSize (  (QWebSettings::FontSize) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLocalStoragePath ( const QString & path )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETLOCALSTORAGEPATH )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setLocalStoragePath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUserStyleSheetUrl ( const QUrl & location )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETUSERSTYLESHEETURL )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUserStyleSheetUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool testAttribute ( WebAttribute attribute ) const
*/
HB_FUNC_STATIC( QWEBSETTINGS_TESTATTRIBUTE )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->testAttribute (  (QWebSettings::WebAttribute) par1 ) );
  }
}


/*
QUrl userStyleSheetUrl () const
*/
HB_FUNC_STATIC( QWEBSETTINGS_USERSTYLESHEETURL )
{
  QWebSettings * obj = (QWebSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->userStyleSheetUrl (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}



/*
void clearIconDatabase ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_CLEARICONDATABASE )
{
  QWebSettings::clearIconDatabase (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearMemoryCaches ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_CLEARMEMORYCACHES )
{
  QWebSettings::clearMemoryCaches (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void enablePersistentStorage ( const QString & path = QString() )
*/
HB_FUNC_STATIC( QWEBSETTINGS_ENABLEPERSISTENTSTORAGE )
{
  QString par1 = ISNIL(1)? QString() : hb_parc(1);
  QWebSettings::enablePersistentStorage ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebSettings * globalSettings ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_GLOBALSETTINGS )
{
  QWebSettings * ptr = QWebSettings::globalSettings (  );
  _qt4xhb_createReturnClass ( ptr, "QWEBSETTINGS" );
}


/*
QString iconDatabasePath ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_ICONDATABASEPATH )
{
  QString str1 = QWebSettings::iconDatabasePath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QIcon iconForUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QWEBSETTINGS_ICONFORURL )
{
  QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QIcon * ptr = new QIcon( QWebSettings::iconForUrl ( *par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QICON", true );
}


/*
int maximumPagesInCache ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_MAXIMUMPAGESINCACHE )
{
  hb_retni( QWebSettings::maximumPagesInCache (  ) );
}


/*
qint64 offlineStorageDefaultQuota ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_OFFLINESTORAGEDEFAULTQUOTA )
{
  qint64 i = QWebSettings::offlineStorageDefaultQuota (  );
  hb_retni( i );
}


/*
QString offlineStoragePath ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_OFFLINESTORAGEPATH )
{
  QString str1 = QWebSettings::offlineStoragePath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString offlineWebApplicationCachePath ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_OFFLINEWEBAPPLICATIONCACHEPATH )
{
  QString str1 = QWebSettings::offlineWebApplicationCachePath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
qint64 offlineWebApplicationCacheQuota ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_OFFLINEWEBAPPLICATIONCACHEQUOTA )
{
  qint64 i = QWebSettings::offlineWebApplicationCacheQuota (  );
  hb_retni( i );
}


/*
void setIconDatabasePath ( const QString & path )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETICONDATABASEPATH )
{
  QString par1 = hb_parc(1);
  QWebSettings::setIconDatabasePath ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumPagesInCache ( int pages )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETMAXIMUMPAGESINCACHE )
{
  int par1 = hb_parni(1);
  QWebSettings::setMaximumPagesInCache ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setObjectCacheCapacities ( int cacheMinDeadCapacity, int cacheMaxDead, int totalCapacity )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETOBJECTCACHECAPACITIES )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QWebSettings::setObjectCacheCapacities ( par1, par2, par3 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOfflineStorageDefaultQuota ( qint64 maximumSize )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETOFFLINESTORAGEDEFAULTQUOTA )
{
  qint64 par1 = hb_parni(1);
  QWebSettings::setOfflineStorageDefaultQuota ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOfflineStoragePath ( const QString & path )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETOFFLINESTORAGEPATH )
{
  QString par1 = hb_parc(1);
  QWebSettings::setOfflineStoragePath ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOfflineWebApplicationCachePath ( const QString & path )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETOFFLINEWEBAPPLICATIONCACHEPATH )
{
  QString par1 = hb_parc(1);
  QWebSettings::setOfflineWebApplicationCachePath ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOfflineWebApplicationCacheQuota ( qint64 maximumSize )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETOFFLINEWEBAPPLICATIONCACHEQUOTA )
{
  qint64 par1 = hb_parni(1);
  QWebSettings::setOfflineWebApplicationCacheQuota ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWebGraphic ( WebGraphic type, const QPixmap & graphic )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETWEBGRAPHIC )
{
  int par1 = hb_parni(1);
  QPixmap * par2 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QWebSettings::setWebGraphic (  (QWebSettings::WebGraphic) par1, *par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPixmap webGraphic ( WebGraphic type )
*/
HB_FUNC_STATIC( QWEBSETTINGS_WEBGRAPHIC )
{
  int par1 = hb_parni(1);
  QPixmap * ptr = new QPixmap( QWebSettings::webGraphic (  (QWebSettings::WebGraphic) par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
}


HB_FUNC_STATIC( QWEBSETTINGS_NEWFROM )
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

HB_FUNC_STATIC( QWEBSETTINGS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBSETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QWEBSETTINGS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBSETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QWEBSETTINGS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBSETTINGS_SETSELFDESTRUCTION )
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
