$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QHttpMultiPart INHERIT QObject

   METHOD new
   METHOD delete
   METHOD append
   METHOD boundary
   METHOD setBoundary
   METHOD setContentType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHttpMultiPart>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QHttpMultiPart ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QHttpMultiPart ( ContentType contentType, QObject * parent = 0 )
$internalConstructor=|new2|QHttpMultiPart::ContentType,QObject *=0

//[1]QHttpMultiPart ( QObject * parent = 0 )
//[2]QHttpMultiPart ( ContentType contentType, QObject * parent = 0 )

HB_FUNC_STATIC( QHTTPMULTIPART_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QHttpMultiPart_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QHttpMultiPart_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void append ( const QHttpPart & httpPart )
$method=|void|append|const QHttpPart &

$prototype=QByteArray boundary () const
$method=|QByteArray|boundary|

$prototype=void setBoundary ( const QByteArray & boundary )
$method=|void|setBoundary|const QByteArray &

$prototype=void setContentType ( ContentType contentType )
$method=|void|setContentType|QHttpMultiPart::ContentType

#pragma ENDDUMP
