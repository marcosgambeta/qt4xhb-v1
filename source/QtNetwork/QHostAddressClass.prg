/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST Q_IPV6ADDR

CLASS QHostAddress

   DATA pointer
   DATA class_id INIT Class_Id_QHostAddress
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD clear
   METHOD isInSubnet1
   METHOD isInSubnet
   METHOD isNull
   METHOD protocol
   METHOD scopeId
   METHOD setAddress1
   METHOD setAddress2
   METHOD setAddress4
   METHOD setAddress5
   METHOD setAddress
   METHOD setScopeId
   METHOD toIPv4Address
   METHOD toIPv6Address
   METHOD toString
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QHostAddress
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QHostAddress
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QHostAddress
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QHostAddress
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QHostAddress
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QHostAddress
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QHostAddress>

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
QHostAddress ()
*/
HB_FUNC( QHOSTADDRESS_NEW1 )
{
  QHostAddress * o = NULL;
  o = new QHostAddress (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostAddress *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QHostAddress ( quint32 ip4Addr )
*/
HB_FUNC( QHOSTADDRESS_NEW2 )
{
  QHostAddress * o = NULL;
  quint32 par1 = hb_parni(1);
  o = new QHostAddress ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostAddress *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}





/*
QHostAddress ( const QString & address )
*/
HB_FUNC( QHOSTADDRESS_NEW6 )
{
  QHostAddress * o = NULL;
  QString par1 = hb_parc(1);
  o = new QHostAddress ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostAddress *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QHostAddress ( const QHostAddress & address )
*/
HB_FUNC( QHOSTADDRESS_NEW7 )
{
  QHostAddress * o = NULL;
  QHostAddress * par1 = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QHostAddress ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostAddress *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QHostAddress ( SpecialAddress address )
*/
HB_FUNC( QHOSTADDRESS_NEW8 )
{
  QHostAddress * o = NULL;
  int par1 = hb_parni(1);
  o = new QHostAddress (  (QHostAddress::SpecialAddress) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostAddress *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QHostAddress ()
//[2]QHostAddress ( quint32 ip4Addr )
//[3]QHostAddress ( quint8 * ip6Addr )
//[4]QHostAddress ( const Q_IPV6ADDR & ip6Addr )
//[5]QHostAddress ( const sockaddr * sockaddr )
//[6]QHostAddress ( const QString & address )
//[7]QHostAddress ( const QHostAddress & address )
//[8]QHostAddress ( SpecialAddress address )

HB_FUNC( QHOSTADDRESS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW1 );
  }
  //else if( ISNUMPAR(1) && ISNUM(1) ) // desativado para não conflitar com [8]
  //{
  //  HB_FUNC_EXEC( QHOSTADDRESS_NEW2 );
  //}
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW6 );
  }
  else if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW7 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QHOSTADDRESS_DELETE )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear ()
*/
HB_FUNC( QHOSTADDRESS_CLEAR )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isInSubnet ( const QHostAddress & subnet, int netmask ) const
*/
HB_FUNC( QHOSTADDRESS_ISINSUBNET1 )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * par1 = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    bool b = obj->isInSubnet ( *par1, par2 );
    hb_retl( b );
  }
}




//[1]bool isInSubnet ( const QHostAddress & subnet, int netmask ) const
//[2]bool isInSubnet ( const QPair<QHostAddress, int> & subnet ) const

HB_FUNC( QHOSTADDRESS_ISINSUBNET )
{
  if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_ISINSUBNET1 );
  }
  //else if( ISNUMPAR(1) && ISOBJECT(1) )
  //{
  //  HB_FUNC_EXEC( QHOSTADDRESS_ISINSUBNET2 );
  //}
}

/*
bool isNull () const
*/
HB_FUNC( QHOSTADDRESS_ISNULL )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
QAbstractSocket::NetworkLayerProtocol protocol () const
*/
HB_FUNC( QHOSTADDRESS_PROTOCOL )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->protocol (  );
    hb_retni( i );
  }
}


/*
QString scopeId () const
*/
HB_FUNC( QHOSTADDRESS_SCOPEID )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->scopeId (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setAddress ( quint32 ip4Addr )
*/
HB_FUNC( QHOSTADDRESS_SETADDRESS1 )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    quint32 par1 = hb_parni(1);
    obj->setAddress ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAddress ( quint8 * ip6Addr )
*/
HB_FUNC( QHOSTADDRESS_SETADDRESS2 )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    quint8 * par1 = (quint8 *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setAddress ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool setAddress ( const QString & address )
*/
HB_FUNC( QHOSTADDRESS_SETADDRESS4 )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->setAddress ( par1 );
    hb_retl( b );
  }
}


/*
void setAddress ( const sockaddr * sockaddr )
*/
HB_FUNC( QHOSTADDRESS_SETADDRESS5 )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    sockaddr * par1 = (sockaddr *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setAddress ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setAddress ( quint32 ip4Addr )
//[2]void setAddress ( quint8 * ip6Addr )
//[3]void setAddress ( const Q_IPV6ADDR & ip6Addr )
//[4]bool setAddress ( const QString & address )
//[5]void setAddress ( const sockaddr * sockaddr )

// TODO: completar implementação
HB_FUNC( QHOSTADDRESS_SETADDRESS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_SETADDRESS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_SETADDRESS4 );
  }
}

/*
void setScopeId ( const QString & id )
*/
HB_FUNC( QHOSTADDRESS_SETSCOPEID )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setScopeId ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint32 toIPv4Address () const
*/
HB_FUNC( QHOSTADDRESS_TOIPV4ADDRESS )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    quint32 i = obj->toIPv4Address (  );
    hb_retni( i );
  }
}


/*
Q_IPV6ADDR toIPv6Address () const
*/
HB_FUNC( QHOSTADDRESS_TOIPV6ADDRESS )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    Q_IPV6ADDR * ptr = new Q_IPV6ADDR( obj->toIPv6Address (  ) );
    _qt4xhb_createReturnClass ( ptr, "Q_IPV6ADDR" );  }
}


/*
QString toString () const
*/
HB_FUNC( QHOSTADDRESS_TOSTRING )
{
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}






#pragma ENDDUMP
