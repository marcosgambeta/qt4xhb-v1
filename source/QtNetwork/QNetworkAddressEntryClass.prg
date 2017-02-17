/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QHOSTADDRESS

CLASS QNetworkAddressEntry

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkAddressEntry
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD broadcast
   METHOD ip
   METHOD netmask
   METHOD prefixLength
   METHOD setBroadcast
   METHOD setIp
   METHOD setNetmask
   METHOD setPrefixLength
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QNetworkAddressEntry
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QNetworkAddressEntry
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QNetworkAddressEntry
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QNetworkAddressEntry
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QNetworkAddressEntry
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QNetworkAddressEntry
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

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
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW1 )
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
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW2 )
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

HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW )
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

HB_FUNC_STATIC( QNETWORKADDRESSENTRY_DELETE )
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
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_BROADCAST )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->broadcast (  ) );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
QHostAddress ip () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_IP )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->ip (  ) );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
QHostAddress netmask () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NETMASK )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->netmask (  ) );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
int prefixLength () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_PREFIXLENGTH )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->prefixLength (  ) );
  }
}


/*
void setBroadcast ( const QHostAddress & newBroadcast )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETBROADCAST )
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
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETIP )
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
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETNETMASK )
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
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETPREFIXLENGTH )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPrefixLength ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
