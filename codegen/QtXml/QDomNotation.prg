$header

#include "hbclass.ch"

CLASS QDomNotation INHERIT QDomNode

   METHOD new
   METHOD nodeType
   METHOD publicId
   METHOD systemId

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomNotation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomNotation ()
*/
$internalConstructor=|new1|

/*
QDomNotation ( const QDomNotation & x )
*/
$internalConstructor=|new2|const QDomNotation &

//[1]QDomNotation ()
//[2]QDomNotation ( const QDomNotation & x )

HB_FUNC_STATIC( QDOMNOTATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomNotation_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMNOTATION(1) )
  {
    QDomNotation_new2();
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

/*
QString publicId () const
*/
$method=|QString|publicId|

/*
QString systemId () const
*/
$method=|QString|systemId|

#pragma ENDDUMP
