$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QHOSTINFO
#endif

CLASS QHostInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addresses
   METHOD error
   METHOD errorString
   METHOD hostName
   METHOD lookupId
   METHOD setAddresses
   METHOD setError
   METHOD setErrorString
   METHOD setHostName
   METHOD setLookupId
   METHOD abortHostLookup
   METHOD fromName
   METHOD localDomainName
   METHOD localHostName
   METHOD lookupHost

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHostInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QHostInfo ( int id = -1 )
*/
HB_FUNC_STATIC( QHOSTINFO_NEW1 )
{
  QHostInfo * o = new QHostInfo ( OPINT(1,-1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QHostInfo ( const QHostInfo & other )
*/
HB_FUNC_STATIC( QHOSTINFO_NEW2 )
{
  QHostInfo * o = new QHostInfo ( *PQHOSTINFO(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QHostInfo ( int id = -1 )
//[2]QHostInfo ( const QHostInfo & other )

HB_FUNC_STATIC( QHOSTINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHOSTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHOSTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQHOSTINFO(1) )
  {
    HB_FUNC_EXEC( QHOSTINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QList<QHostAddress> addresses () const
*/
HB_FUNC_STATIC( QHOSTINFO_ADDRESSES )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QHostAddress> list = obj->addresses ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QHOSTADDRESS" );
    #else
    pDynSym = hb_dynsymFindName( "QHOSTADDRESS" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QHostAddress *) new QHostAddress ( list[i] ) );
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


/*
HostInfoError error () const
*/
HB_FUNC_STATIC( QHOSTINFO_ERROR )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error () );
  }
}

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QString hostName () const
*/
$method=|QString|hostName|

/*
int lookupId () const
*/
$method=|int|lookupId|

/*
void setAddresses ( const QList<QHostAddress> & addresses )
*/
HB_FUNC_STATIC( QHOSTINFO_SETADDRESSES )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QHostAddress> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->setAddresses ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setError ( HostInfoError error )
*/
$method=|void|setError|QHostInfo::HostInfoError

/*
void setErrorString ( const QString & str )
*/
$method=|void|setErrorString|const QString &

/*
void setHostName ( const QString & hostName )
*/
$method=|void|setHostName|const QString &

/*
void setLookupId ( int id )
*/
$method=|void|setLookupId|int

/*
static void abortHostLookup ( int id )
*/
$staticMethod=|void|abortHostLookup|int

/*
static QHostInfo fromName ( const QString & name )
*/
$staticMethod=|QHostInfo|fromName|const QString &

/*
static QString localDomainName ()
*/
$staticMethod=|QString|localDomainName|

/*
static QString localHostName ()
*/
$staticMethod=|QString|localHostName|

/*
static int lookupHost ( const QString & name, QObject * receiver, const char * member )
*/
$staticMethod=|int|lookupHost|const QString &,QObject *,const char *

$extraMethods

#pragma ENDDUMP
