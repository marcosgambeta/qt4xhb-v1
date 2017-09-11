$header

#include "hbclass.ch"

CLASS QDomDocumentFragment INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomDocumentFragment>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomDocumentFragment ()
*/
$internalConstructor=|new1|

/*
QDomDocumentFragment ( const QDomDocumentFragment & x )
*/
$internalConstructor=|new2|const QDomDocumentFragment &

//[1]QDomDocumentFragment ()
//[2]QDomDocumentFragment ( const QDomDocumentFragment & x )

HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomDocumentFragment_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTFRAGMENT(1) )
  {
    QDomDocumentFragment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDomNode::NodeType nodeType () const
*/
$method=|QDomNode::NodeType|nodeType|

#pragma ENDDUMP
