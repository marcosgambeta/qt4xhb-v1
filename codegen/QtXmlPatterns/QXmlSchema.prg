$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QXMLNAMEPOOL
REQUEST QNETWORKACCESSMANAGER
REQUEST QABSTRACTURIRESOLVER
#endif

CLASS QXmlSchema

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD documentUri
   METHOD isValid
   METHOD load
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setUriResolver
   METHOD uriResolver

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlSchema>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QAbstractMessageHandler>
#include <QNetworkAccessManager>
#include <QAbstractUriResolver>

/*
QXmlSchema ()
*/
$internalConstructor=|new1|

/*
QXmlSchema ( const QXmlSchema & other )
*/
$internalConstructor=|new2|const QXmlSchema &

//[1]QXmlSchema ()
//[2]QXmlSchema ( const QXmlSchema & other )

HB_FUNC_STATIC( QXMLSCHEMA_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlSchema_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
  {
    QXmlSchema_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QUrl documentUri () const
*/
$method=|QUrl|documentUri|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool load ( const QUrl & source )
*/
$internalMethod=|bool|load,load1|const QUrl &

/*
bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
*/
$internalMethod=|bool|load,load2|QIODevice *,const QUrl &=QUrl()

/*
bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )
*/
$internalMethod=|bool|load,load3|const QByteArray &,const QUrl &=QUrl()

//[1]bool load ( const QUrl & source )
//[2]bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
//[3]bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )

HB_FUNC_STATIC( QXMLSCHEMA_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QXmlSchema_load1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlSchema_load2();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlSchema_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractMessageHandler * messageHandler () const
*/
$method=|QAbstractMessageHandler *|messageHandler|

/*
QXmlNamePool namePool () const
*/
$method=|QXmlNamePool|namePool|

/*
QNetworkAccessManager * networkAccessManager () const
*/
$method=|QNetworkAccessManager *|networkAccessManager|

/*
void setMessageHandler ( QAbstractMessageHandler * handler )
*/
$method=|void|setMessageHandler|QAbstractMessageHandler *

/*
void setNetworkAccessManager ( QNetworkAccessManager * manager )
*/
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

/*
void setUriResolver ( const QAbstractUriResolver * resolver )
*/
$method=|void|setUriResolver|const QAbstractUriResolver *

/*
const QAbstractUriResolver * uriResolver () const
*/
$method=|const QAbstractUriResolver *|uriResolver|

$extraMethods

#pragma ENDDUMP
