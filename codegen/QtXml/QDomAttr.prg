$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMELEMENT
#endif

CLASS QDomAttr INHERIT QDomNode

   METHOD new
   METHOD name
   METHOD nodeType
   METHOD ownerElement
   METHOD setValue
   METHOD specified
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomAttr>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDomAttr ()
$internalConstructor=|new1|

$prototype=QDomAttr ( const QDomAttr & x )
$internalConstructor=|new2|const QDomAttr &

//[1]QDomAttr ()
//[2]QDomAttr ( const QDomAttr & x )

HB_FUNC_STATIC( QDOMATTR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomAttr_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMATTR(1) )
  {
    QDomAttr_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QString name () const
$method=|QString|name|

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

$prototype=QDomElement ownerElement () const
$method=|QDomElement|ownerElement|

$prototype=void setValue ( const QString & v )
$method=|void|setValue|const QString &

$prototype=bool specified () const
$method=|bool|specified|

$prototype=QString value () const
$method=|QString|value|

#pragma ENDDUMP
