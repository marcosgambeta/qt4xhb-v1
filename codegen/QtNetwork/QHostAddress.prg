%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHostAddress ()
$internalConstructor=|new1|

$prototype=QHostAddress ( quint32 ip4Addr )
$constructor=|new2|quint32

$prototype=QHostAddress ( quint8 * ip6Addr )
%% TODO: implementar 'quint8 *'
%% $constructor=|new3|quint8 *

$prototype=QHostAddress ( const Q_IPV6ADDR & ip6Addr )
%% TODO: implementar 'const Q_IPV6ADDR &'
%% $constructor=|new4|const Q_IPV6ADDR &

$prototype=QHostAddress ( const sockaddr * sockaddr )
%% TODO: implementar 'const sockaddr *'
%% $constructor=|new5|const sockaddr *

$prototype=QHostAddress ( const QString & address )
$internalConstructor=|new6|const QString &

$prototype=QHostAddress ( const QHostAddress & address )
$internalConstructor=|new7|const QHostAddress &

$prototype=QHostAddress ( SpecialAddress address )
$constructor=|new8|QHostAddress::SpecialAddress

/*
[1]QHostAddress ()
[2]QHostAddress ( quint32 ip4Addr )
[3]QHostAddress ( quint8 * ip6Addr )
[4]QHostAddress ( const Q_IPV6ADDR & ip6Addr )
[5]QHostAddress ( const sockaddr * sockaddr )
[6]QHostAddress ( const QString & address )
[7]QHostAddress ( const QHostAddress & address )
[8]QHostAddress ( SpecialAddress address )
*/

HB_FUNC_STATIC( QHOSTADDRESS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QHostAddress_new1();
  }
%%  else if( ISNUMPAR(1) && ISNUM(1) ) // desativado para não conflitar com [8]
%%  {
%%    HB_FUNC_EXEC( QHOSTADDRESS_NEW2 );
%%  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QHostAddress_new6();
  }
  else if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
  {
    QHostAddress_new7();
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
$addMethod=new

$deleteMethod

$prototype=void clear ()
$method=|void|clear|

$prototype=bool isInSubnet ( const QHostAddress & subnet, int netmask ) const
$internalMethod=|bool|isInSubnet,isInSubnet1|const QHostAddress &,int

$prototype=bool isInSubnet ( const QPair<QHostAddress, int> & subnet ) const
%% TODO: implementar
%% $internalMethod=|bool|isInSubnet,isInSubnet2|const QPair<QHostAddress, int> &

/*
[1]bool isInSubnet ( const QHostAddress & subnet, int netmask ) const
[2]bool isInSubnet ( const QPair<QHostAddress, int> & subnet ) const
*/

HB_FUNC_STATIC( QHOSTADDRESS_ISINSUBNET )
{
  if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISNUM(2) )
  {
    QHostAddress_isInSubnet1();
  }
%%  else if( ISNUMPAR(1) && ISOBJECT(1) )
%%  {
%%    QHostAddress_isInSubnet2();
%%  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=isInSubnet

$prototypeV2=bool isNull() const

$prototype=QAbstractSocket::NetworkLayerProtocol protocol () const
$method=|QAbstractSocket::NetworkLayerProtocol|protocol|

$prototype=QString scopeId () const
$method=|QString|scopeId|

$prototype=void setAddress ( quint32 ip4Addr )
$internalMethod=|void|setAddress,setAddress1|quint32

$prototype=void setAddress ( quint8 * ip6Addr )
%% TODO: implementar 'quint8 *'
%% $method=|void|setAddress,setAddress2|quint8 *

$prototype=void setAddress ( const Q_IPV6ADDR & ip6Addr )
%% TODO: implementar 'const Q_IPV6ADDR &'
%% $method=|void|setAddress,setAddress3|const Q_IPV6ADDR &

$prototype=bool setAddress ( const QString & address )
$internalMethod=|bool|setAddress,setAddress4|const QString &

$prototype=void setAddress ( const sockaddr * sockaddr )
%% TODO: implementar 'const sockaddr *'
%% $method=|void|setAddress,setAddress5|const sockaddr *

/*
[1]void setAddress ( quint32 ip4Addr )
[2]void setAddress ( quint8 * ip6Addr )
[3]void setAddress ( const Q_IPV6ADDR & ip6Addr )
[4]bool setAddress ( const QString & address )
[5]void setAddress ( const sockaddr * sockaddr )
*/

%% TODO: completar implementação
HB_FUNC_STATIC( QHOSTADDRESS_SETADDRESS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QHostAddress_setAddress1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QHostAddress_setAddress4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setAddress

$prototype=void setScopeId ( const QString & id )
$method=|void|setScopeId|const QString &

$prototype=quint32 toIPv4Address () const
$method=|quint32|toIPv4Address|

$prototype=Q_IPV6ADDR toIPv6Address () const
%% TODO: implementar 'Q_IPV6ADDR'
%% $method=|Q_IPV6ADDR|toIPv6Address|

$prototype=QString toString () const
$method=|QString|toString|

$extraMethods

#pragma ENDDUMP
