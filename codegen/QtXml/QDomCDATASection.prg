$header

#include "hbclass.ch"

CLASS QDomCDATASection INHERIT QDomText

   METHOD new
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomCDATASection>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomCDATASection ()
*/
$internalConstructor=|new1|

/*
QDomCDATASection ( const QDomCDATASection & x )
*/
$internalConstructor=|new2|const QDomCDATASection &

//[1]QDomCDATASection ()
//[2]QDomCDATASection ( const QDomCDATASection & x )

HB_FUNC_STATIC( QDOMCDATASECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomCDATASection_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMCDATASECTION(1) )
  {
    QDomCDATASection_new2();
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
