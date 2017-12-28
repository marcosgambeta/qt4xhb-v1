$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWEBDATABASE
REQUEST QWEBSECURITYORIGIN
#endif

CLASS QWebSecurityOrigin

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD databaseQuota
   METHOD databaseUsage
   METHOD databases
   METHOD host
   METHOD port
   METHOD scheme
   METHOD setDatabaseQuota
   METHOD addLocalScheme
   METHOD allOrigins
   METHOD localSchemes
   METHOD removeLocalScheme

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWebSecurityOrigin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>
#include <QWebDatabase>

$prototype=QWebSecurityOrigin ( const QWebSecurityOrigin & other )
$constructor=|new|const QWebSecurityOrigin &

$deleteMethod

$prototype=qint64 databaseQuota () const
$method=|qint64|databaseQuota|

$prototype=qint64 databaseUsage () const
$method=|qint64|databaseUsage|

$prototype=QList<QWebDatabase> databases () const
HB_FUNC_STATIC( QWEBSECURITYORIGIN_DATABASES )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QWebDatabase> list = obj->databases ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QWEBDATABASE" );
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
        hb_itemPutPtr( pItem, (QWebDatabase *) new QWebDatabase ( list[i] ) );
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

$prototype=QString host () const
$method=|QString|host|

$prototype=int port () const
$method=|int|port|

$prototype=QString scheme () const
$method=|QString|scheme|

$prototype=void setDatabaseQuota ( qint64 quota )
$method=|void|setDatabaseQuota|qint64

$prototype=static void addLocalScheme ( const QString & scheme )
$staticMethod=|void|addLocalScheme|const QString &

$prototype=QList<QWebSecurityOrigin> allOrigins ()
HB_FUNC_STATIC( QWEBSECURITYORIGIN_ALLORIGINS )
{
  QList<QWebSecurityOrigin> list = QWebSecurityOrigin::allOrigins ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QWEBSECURITYORIGIN" );
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
      hb_itemPutPtr( pItem, (QWebSecurityOrigin *) new QWebSecurityOrigin ( list[i] ) );
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

$prototype=static QStringList localSchemes ()
$staticMethod=|QStringList|localSchemes|

$prototype=static void removeLocalScheme ( const QString & scheme )
$staticMethod=|void|removeLocalScheme|const QString &

$extraMethods

#pragma ENDDUMP
