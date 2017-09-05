$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QWebPluginFactory INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD refreshPlugins
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWebPluginFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QObject * create ( const QString & mimeType, const QUrl & url, const QStringList & argumentNames, const QStringList & argumentValues ) const = 0
*/
HB_FUNC_STATIC( QWEBPLUGINFACTORY_CREATE )
{
  QWebPluginFactory * obj = (QWebPluginFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->create ( PQSTRING(1), *PQURL(2), PQSTRINGLIST(3), PQSTRINGLIST(4) );
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}



/*
virtual void refreshPlugins ()
*/
HB_FUNC_STATIC( QWEBPLUGINFACTORY_REFRESHPLUGINS )
{
  QWebPluginFactory * obj = (QWebPluginFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->refreshPlugins ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
