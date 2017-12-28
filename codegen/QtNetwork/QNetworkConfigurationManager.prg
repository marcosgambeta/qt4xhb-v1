$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QNetworkConfigurationManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD allConfigurations
   METHOD capabilities
   METHOD configurationFromIdentifier
   METHOD defaultConfiguration
   METHOD isOnline
   METHOD updateConfigurations

   METHOD onConfigurationAdded
   METHOD onConfigurationChanged
   METHOD onConfigurationRemoved
   METHOD onOnlineStateChanged
   METHOD onUpdateCompleted

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkConfigurationManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QNetworkConfigurationManager ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QList<QNetworkConfiguration> allConfigurations ( QNetworkConfiguration::StateFlags filter = 0 ) const
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ALLCONFIGURATIONS )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = ISNIL(1)? (int) 0 : hb_parni(1);
    QList<QNetworkConfiguration> list = obj->allConfigurations ( (QNetworkConfiguration::StateFlags) par1 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QNETWORKCONFIGURATION" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QNetworkConfiguration *) new QNetworkConfiguration ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QNetworkConfigurationManager::Capabilities capabilities () const
$method=|QNetworkConfigurationManager::Capabilities|capabilities|

$prototype=QNetworkConfiguration configurationFromIdentifier ( const QString & identifier ) const
$method=|QNetworkConfiguration|configurationFromIdentifier|const QString &

$prototype=QNetworkConfiguration defaultConfiguration () const
$method=|QNetworkConfiguration|defaultConfiguration|

$prototype=bool isOnline () const
$method=|bool|isOnline|

$prototype=void updateConfigurations ()
$method=|void|updateConfigurations|

#pragma ENDDUMP
