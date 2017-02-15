/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QNETWORKPROXY

CLASS QNetworkProxy

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkProxy
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QNetworkProxy
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QNetworkProxy
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QNetworkProxy
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QNetworkProxy
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QNetworkProxy
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QNetworkProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QNetworkProxy>

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
QNetworkProxy ()
*/
HB_FUNC_STATIC( QNETWORKPROXY_NEW1 )
{
  QNetworkProxy * o = NULL;
  o = new QNetworkProxy (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkProxy *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QNetworkProxy ( ProxyType type, const QString & hostName = QString(), quint16 port = 0, const QString & user = QString(), const QString & password = QString() )
*/
HB_FUNC_STATIC( QNETWORKPROXY_NEW2 )
{
  QNetworkProxy * o = NULL;
  int par1 = hb_parni(1);
  QString par2 = ISNIL(2)? QString() : hb_parc(2);
  quint16 par3 = ISNIL(3)? 0 : hb_parni(3);
  QString par4 = ISNIL(4)? QString() : hb_parc(4);
  QString par5 = ISNIL(5)? QString() : hb_parc(5);
  o = new QNetworkProxy (  (QNetworkProxy::ProxyType) par1, par2, par3, par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkProxy *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QNetworkProxy ( const QNetworkProxy & other )
*/
HB_FUNC_STATIC( QNETWORKPROXY_NEW3 )
{
  QNetworkProxy * o = NULL;
  QNetworkProxy * par1 = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QNetworkProxy ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkProxy *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
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
    int i = obj->capabilities (  );
    hb_retni( i );
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
    QString str1 = obj->hostName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    bool b = obj->isCachingProxy (  );
    hb_retl( b );
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
    bool b = obj->isTransparentProxy (  );
    hb_retl( b );
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
    QString str1 = obj->password (  );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    quint16 i = obj->port (  );
    hb_retni( i );
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
    obj->setCapabilities (  (QNetworkProxy::Capabilities) par1 );
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
    QString par1 = hb_parc(1);
    obj->setHostName ( par1 );
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
    QString par1 = hb_parc(1);
    obj->setPassword ( par1 );
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
    quint16 par1 = hb_parni(1);
    obj->setPort ( par1 );
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
    obj->setType (  (QNetworkProxy::ProxyType) par1 );
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
    QString par1 = hb_parc(1);
    obj->setUser ( par1 );
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
    int i = obj->type (  );
    hb_retni( i );
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
    QString str1 = obj->user (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}



/*
QNetworkProxy applicationProxy ()
*/
HB_FUNC_STATIC( QNETWORKPROXY_APPLICATIONPROXY )
{
  QNetworkProxy * ptr = new QNetworkProxy( QNetworkProxy::applicationProxy (  ) );
  _qt4xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
}


/*
void setApplicationProxy ( const QNetworkProxy & networkProxy )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETAPPLICATIONPROXY )
{
  QNetworkProxy * par1 = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QNetworkProxy::setApplicationProxy ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
