$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKPROXY
#endif

CLASS QNetworkProxy

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD capabilities
   METHOD hostName
   METHOD isCachingProxy
   METHOD isTransparentProxy
   METHOD password
   METHOD port
   METHOD setCapabilities
   METHOD setHostName
   METHOD setPassword
   METHOD setPort
   METHOD setType
   METHOD setUser
   METHOD type
   METHOD user
   METHOD applicationProxy
   METHOD setApplicationProxy
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkProxy>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QNetworkProxy ()
*/
HB_FUNC_STATIC( QNETWORKPROXY_NEW1 )
{
  QNetworkProxy * o = new QNetworkProxy ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QNetworkProxy ( ProxyType type, const QString & hostName = QString(), quint16 port = 0, const QString & user = QString(), const QString & password = QString() )
*/
HB_FUNC_STATIC( QNETWORKPROXY_NEW2 )
{
  QNetworkProxy * o = new QNetworkProxy ( (QNetworkProxy::ProxyType) hb_parni(1), OPQSTRING(2,QString()), OPQUINT16(3,0), OPQSTRING(4,QString()), OPQSTRING(5,QString()) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QNetworkProxy ( const QNetworkProxy & other )
*/
HB_FUNC_STATIC( QNETWORKPROXY_NEW3 )
{
  QNetworkProxy * o = new QNetworkProxy ( *PQNETWORKPROXY(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QNetworkProxy ()
//[2]QNetworkProxy ( ProxyType type, const QString & hostName = QString(), quint16 port = 0, const QString & user = QString(), const QString & password = QString() )
//[3]QNetworkProxy ( const QNetworkProxy & other )

HB_FUNC_STATIC( QNETWORKPROXY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKPROXY_NEW1 );
  }
  else if( ISBETWEEN(1,5) && ISNUM(1) && (ISCHAR(2)||ISNIL(2)) && (ISCHAR(3)||ISNIL(3))  && (ISCHAR(4)||ISNIL(4)) && (ISCHAR(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QNETWORKPROXY_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKPROXY(1) )
  {
    HB_FUNC_EXEC( QNETWORKPROXY_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QNETWORKPROXY_DELETE )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Capabilities capabilities () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_CAPABILITIES )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->capabilities () );
  }
}


/*
QString hostName () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_HOSTNAME )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->hostName () );
  }
}


/*
bool isCachingProxy () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_ISCACHINGPROXY )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isCachingProxy () );
  }
}


/*
bool isTransparentProxy () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_ISTRANSPARENTPROXY )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isTransparentProxy () );
  }
}


/*
QString password () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_PASSWORD )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->password () );
  }
}


/*
quint16 port () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_PORT )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQUINT16( obj->port () );
  }
}


/*
void setCapabilities ( Capabilities capabilities )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETCAPABILITIES )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCapabilities ( (QNetworkProxy::Capabilities) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHostName ( const QString & hostName )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETHOSTNAME )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHostName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPassword ( const QString & password )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETPASSWORD )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPassword ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPort ( quint16 port )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETPORT )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPort ( PQUINT16(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setType ( QNetworkProxy::ProxyType type )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETTYPE )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setType ( (QNetworkProxy::ProxyType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUser ( const QString & user )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETUSER )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUser ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QNetworkProxy::ProxyType type () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_TYPE )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->type () );
  }
}


/*
QString user () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_USER )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->user () );
  }
}



/*
QNetworkProxy applicationProxy ()
*/
HB_FUNC_STATIC( QNETWORKPROXY_APPLICATIONPROXY )
{
  QNetworkProxy * ptr = new QNetworkProxy( QNetworkProxy::applicationProxy () );
  _qt4xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
}


/*
void setApplicationProxy ( const QNetworkProxy & networkProxy )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETAPPLICATIONPROXY )
{
  QNetworkProxy::setApplicationProxy ( *PQNETWORKPROXY(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
