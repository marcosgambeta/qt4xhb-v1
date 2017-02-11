/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QNetworkAddressEntry>

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
QNetworkAddressEntry ()
*/
HB_FUNC( QNETWORKADDRESSENTRY_NEW1 )
{
  QNetworkAddressEntry * o = NULL;
  o = new QNetworkAddressEntry (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkAddressEntry *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QNetworkAddressEntry ( const QNetworkAddressEntry & other )
*/
HB_FUNC( QNETWORKADDRESSENTRY_NEW2 )
{
  QNetworkAddressEntry * o = NULL;
  QNetworkAddressEntry * par1 = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QNetworkAddressEntry ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkAddressEntry *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QNetworkAddressEntry ()
//[2]QNetworkAddressEntry ( const QNetworkAddressEntry & other )

HB_FUNC( QNETWORKADDRESSENTRY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKADDRESSENTRY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKADDRESSENTRY(1) )
  {
    HB_FUNC_EXEC( QNETWORKADDRESSENTRY_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QNETWORKADDRESSENTRY_DELETE )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QHostAddress broadcast () const
*/
HB_FUNC( QNETWORKADDRESSENTRY_BROADCAST )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->broadcast (  ) );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );  }
}


/*
QHostAddress ip () const
*/
HB_FUNC( QNETWORKADDRESSENTRY_IP )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->ip (  ) );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );  }
}


/*
QHostAddress netmask () const
*/
HB_FUNC( QNETWORKADDRESSENTRY_NETMASK )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->netmask (  ) );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );  }
}


/*
int prefixLength () const
*/
HB_FUNC( QNETWORKADDRESSENTRY_PREFIXLENGTH )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->prefixLength (  );
    hb_retni( i );
  }
}


/*
void setBroadcast ( const QHostAddress & newBroadcast )
*/
HB_FUNC( QNETWORKADDRESSENTRY_SETBROADCAST )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * par1 = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBroadcast ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIp ( const QHostAddress & newIp )
*/
HB_FUNC( QNETWORKADDRESSENTRY_SETIP )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * par1 = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setIp ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetmask ( const QHostAddress & newNetmask )
*/
HB_FUNC( QNETWORKADDRESSENTRY_SETNETMASK )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * par1 = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setNetmask ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrefixLength ( int length )
*/
HB_FUNC( QNETWORKADDRESSENTRY_SETPREFIXLENGTH )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPrefixLength ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




