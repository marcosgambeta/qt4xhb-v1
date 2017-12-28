$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QNetworkConfiguration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bearerName
   METHOD bearerType
   METHOD bearerTypeName
   METHOD children
   METHOD identifier
   METHOD isRoamingAvailable
   METHOD isValid
   METHOD name
   METHOD purpose
   METHOD state
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkConfiguration>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QNetworkConfiguration ()
$internalConstructor=|new1|

$prototype=QNetworkConfiguration ( const QNetworkConfiguration & other )
$internalConstructor=|new2|const QNetworkConfiguration &

//[1]QNetworkConfiguration ()
//[2]QNetworkConfiguration ( const QNetworkConfiguration & other )

HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkConfiguration_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
  {
    QNetworkConfiguration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString bearerName () const (deprecated)
$method=|QString|bearerName|

$prototype=BearerType bearerType () const
$method=|QNetworkConfiguration::BearerType|bearerType|

$prototype=QString bearerTypeName () const
$method=|QString|bearerTypeName|

$prototype=QList<QNetworkConfiguration> children () const
HB_FUNC_STATIC( QNETWORKCONFIGURATION_CHILDREN )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QNetworkConfiguration> list = obj->children ();
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

$prototype=QString identifier () const
$method=|QString|identifier|

$prototype=bool isRoamingAvailable () const
$method=|bool|isRoamingAvailable|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QString name () const
$method=|QString|name|

$prototype=Purpose purpose () const
$method=|QNetworkConfiguration::Purpose|purpose|

$prototype=StateFlags state () const
$method=|QNetworkConfiguration::StateFlags|state|

$prototype=Type type () const
$method=|QNetworkConfiguration::Type|type|

$extraMethods

#pragma ENDDUMP
