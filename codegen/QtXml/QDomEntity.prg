$header

#include "hbclass.ch"

CLASS QDomEntity INHERIT QDomNode

   METHOD new
   METHOD nodeType
   METHOD notationName
   METHOD publicId
   METHOD systemId

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomEntity>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDomEntity ()
$internalConstructor=|new1|

$prototype=QDomEntity ( const QDomEntity & x )
$internalConstructor=|new2|const QDomEntity &

//[1]QDomEntity ()
//[2]QDomEntity ( const QDomEntity & x )

HB_FUNC_STATIC( QDOMENTITY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomEntity_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMENTITY(1) )
  {
    QDomEntity_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

$prototype=QString notationName () const
$method=|QString|notationName|

$prototype=QString publicId () const
$method=|QString|publicId|

$prototype=QString systemId () const
$method=|QString|systemId|

#pragma ENDDUMP
