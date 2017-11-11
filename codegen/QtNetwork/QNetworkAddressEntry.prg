$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
#endif

CLASS QNetworkAddressEntry

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

#include <QNetworkAddressEntry>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QNetworkAddressEntry ()
*/
$internalConstructor=|new1|

/*
QNetworkAddressEntry ( const QNetworkAddressEntry & other )
*/
$internalConstructor=|new2|const QNetworkAddressEntry &

//[1]QNetworkAddressEntry ()
//[2]QNetworkAddressEntry ( const QNetworkAddressEntry & other )

HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkAddressEntry_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKADDRESSENTRY(1) )
  {
    QNetworkAddressEntry_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QHostAddress broadcast () const
*/
$method=|QHostAddress|broadcast|

/*
QHostAddress ip () const
*/
$method=|QHostAddress|ip|

/*
QHostAddress netmask () const
*/
$method=|QHostAddress|netmask|

/*
int prefixLength () const
*/
$method=|int|prefixLength|

/*
void setBroadcast ( const QHostAddress & newBroadcast )
*/
$method=|void|setBroadcast|const QHostAddress &

/*
void setIp ( const QHostAddress & newIp )
*/
$method=|void|setIp|const QHostAddress &

/*
void setNetmask ( const QHostAddress & newNetmask )
*/
$method=|void|setNetmask|const QHostAddress &

/*
void setPrefixLength ( int length )
*/
$method=|void|setPrefixLength|int

$extraMethods

#pragma ENDDUMP
