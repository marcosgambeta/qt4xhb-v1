$header

#include "hbclass.ch"

CLASS QDomComment INHERIT QDomCharacterData

   METHOD new
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomComment>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDomComment ()
$internalConstructor=|new1|

$prototype=QDomComment ( const QDomComment & x )
$internalConstructor=|new2|const QDomComment &

//[1]QDomComment ()
//[2]QDomComment ( const QDomComment & x )

HB_FUNC_STATIC( QDOMCOMMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomComment_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMCOMMENT(1) )
  {
    QDomComment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QDomNode::NodeType nodeType () cons
$method=|QDomNode::NodeType|nodeType|

#pragma ENDDUMP
