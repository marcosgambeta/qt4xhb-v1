$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMNAMEDNODEMAP
#endif

CLASS QDomDocumentType INHERIT QDomNode

   METHOD new
   METHOD entities
   METHOD internalSubset
   METHOD name
   METHOD nodeType
   METHOD notations
   METHOD publicId
   METHOD systemId

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomDocumentType>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomDocumentType ()
*/
$internalConstructor=|new1|

/*
QDomDocumentType ( const QDomDocumentType & n )
*/
$internalConstructor=|new2|const QDomDocumentType &

//[1]QDomDocumentType ()
//[2]QDomDocumentType ( const QDomDocumentType & n )

HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomDocumentType_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    QDomDocumentType_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDomNamedNodeMap entities () const
*/
$method=|QDomNamedNodeMap|entities|

/*
QString internalSubset () const
*/
$method=|QString|internalSubset|

/*
QString name () const
*/
$method=|QString|name|

/*
QDomNode::NodeType nodeType () const
*/
$method=|QDomNode::NodeType|nodeType|

/*
QDomNamedNodeMap notations () const
*/
$method=|QDomNamedNodeMap|notations|

/*
QString publicId () const
*/
$method=|QString|publicId|

/*
QString systemId () const
*/
$method=|QString|systemId|

#pragma ENDDUMP
