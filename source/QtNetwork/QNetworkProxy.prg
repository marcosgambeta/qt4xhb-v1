/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QNetworkProxy

   DATA pointer
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject() CLASS QNetworkProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtNetwork/QNetworkProxy>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QNETWORKPROXY_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    /*
    QNetworkProxy()
    */
    QNetworkProxy * obj = new QNetworkProxy();
    Qt4xHb::returnNewObject( obj, true );
  }
  else if( ISBETWEEN( 1, 5 ) && HB_ISNUM( 1 ) && ( HB_ISCHAR( 2 ) || HB_ISNIL( 2 ) ) && ( HB_ISCHAR( 3 ) || HB_ISNIL( 3 ) )  && ( HB_ISCHAR( 4 ) || HB_ISNIL( 4 ) ) && ( HB_ISCHAR( 5 ) || HB_ISNIL( 5 ) ) )
  {
    /*
    QNetworkProxy( QNetworkProxy::ProxyType type, const QString & hostName = QString(), quint16 port = 0, const QString & user = QString(), const QString & password = QString() )
    */
    QNetworkProxy * obj = new QNetworkProxy( ( QNetworkProxy::ProxyType ) hb_parni( 1 ), OPQSTRING( 2, QString() ), OPQUINT16( 3, 0 ), OPQSTRING( 4, QString() ), OPQSTRING( 5, QString() ) );
    Qt4xHb::returnNewObject( obj, true );
  }
  else if( ISNUMPAR( 1 ) && ISQNETWORKPROXY( 1 ) )
  {
    /*
    QNetworkProxy( const QNetworkProxy & other )
    */
    QNetworkProxy * obj = new QNetworkProxy( *PQNETWORKPROXY( 1 ) );
    Qt4xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QNETWORKPROXY_DELETE )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
QNetworkProxy::Capabilities capabilities() const
*/
HB_FUNC_STATIC( QNETWORKPROXY_CAPABILITIES )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->capabilities() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString hostName() const
*/
HB_FUNC_STATIC( QNETWORKPROXY_HOSTNAME )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->hostName() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isCachingProxy() const
*/
HB_FUNC_STATIC( QNETWORKPROXY_ISCACHINGPROXY )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isCachingProxy() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isTransparentProxy() const
*/
HB_FUNC_STATIC( QNETWORKPROXY_ISTRANSPARENTPROXY )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isTransparentProxy() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString password() const
*/
HB_FUNC_STATIC( QNETWORKPROXY_PASSWORD )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->password() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
quint16 port() const
*/
HB_FUNC_STATIC( QNETWORKPROXY_PORT )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQUINT16( obj->port() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setCapabilities( QNetworkProxy::Capabilities capabilities )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETCAPABILITIES )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setCapabilities( ( QNetworkProxy::Capabilities ) hb_parni( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHostName( const QString & hostName )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETHOSTNAME )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setHostName( PQSTRING( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPassword( const QString & password )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETPASSWORD )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setPassword( PQSTRING( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPort( quint16 port )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETPORT )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setPort( PQUINT16( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setType( QNetworkProxy::ProxyType type )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETTYPE )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setType( ( QNetworkProxy::ProxyType ) hb_parni( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUser( const QString & user )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETUSER )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setUser( PQSTRING( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QNetworkProxy::ProxyType type() const
*/
HB_FUNC_STATIC( QNETWORKPROXY_TYPE )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->type() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString user() const
*/
HB_FUNC_STATIC( QNETWORKPROXY_USER )
{
  QNetworkProxy * obj = static_cast< QNetworkProxy * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->user() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static QNetworkProxy applicationProxy()
*/
HB_FUNC_STATIC( QNETWORKPROXY_APPLICATIONPROXY )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 0 ) )
  {
#endif
    QNetworkProxy * ptr = new QNetworkProxy( QNetworkProxy::applicationProxy() );
    Qt4xHb::createReturnClass( ptr, "QNETWORKPROXY", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void setApplicationProxy( const QNetworkProxy & networkProxy )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETAPPLICATIONPROXY )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 1 ) && ISQNETWORKPROXY( 1 ) )
  {
#endif
    QNetworkProxy::setApplicationProxy( *PQNETWORKPROXY( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QNETWORKPROXY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast< void * >( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QNETWORKPROXY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKPROXY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKPROXY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXY_SELFDESTRUCTION )
{
  hb_retl( ( bool ) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKPROXY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl( 1 ) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
